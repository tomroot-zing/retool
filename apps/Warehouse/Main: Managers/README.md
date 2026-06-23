# Purpose
The purpose of this app is to let managers see all of the Retool apps that they have access to. They can rename apps, add notes, pin favorites, and hide apps, making it easier to find the right app for their use case.

# How It Works

## User Workflow
1. User scrolls through a list of apps they have permissions to open.
2. User clicks an app to open it in a new tab.
3. Optionally, user can **Unlock** editing (button in the top right) to make changes like:
   - Edit name / notes (EditableTextArea components)
   - Pin / unpin favorite (Checkbox)
   - Hide / unhide (Checkbox)

Apps are sorted **pinned first**, then **alphabetically by title**.

**Save behavior:**
- Edited text fields save on **blur** (when the user clicks away).
- Checkboxes save **immediately** on change.

**Hidden apps:**
- Hidden apps are still fetched and still exist in the list data.
- Whether hidden apps are *shown* is controlled by `toggleHiddenButton` and enforced client-side in `apps_view`.

---

## Data Model

### Sources of Truth
1. **Retool Apps metadata + access rights**
   - Comes from Retool API queries on page load.
2. **User-specific preferences**
   - Stored in the Retool Database table `user_app_prefs`.
   - One row per `(app_id, user_id)` where `user_id` uses `current_user.sid`.
   - Fields: `app_id`, `user_id`, `app_name`, `app_description` (user notes), `pinned`, `app_hide`.

### Client-side State
This app keeps local state so the UI stays responsive and does **not** require re-fetching DB prefs after every edit.

- `prefsByAppId` (temporary state):
  - Map keyed by `app_id` (UUID).
  - Holds the latest committed prefs for the current user.
  - Initialized from `qry_user_prefs` on page load (via `prefs_map`).
  - Updated after each successful write using `update_user_prefs` + `RETURNING *`.

- `draftPref` (temporary state):
  - A *single object* holding the most recent edit payload for the card being edited.
  - Rewritten on every edit event.
  - Used to optimistically update the one card being edited until the DB write returns.
  - Cleared after successful save.

---

## Queries

### On Page Load
#### `qry_all_user_apps`
- **Purpose:** Fetch the list of Retool apps the current user can access (IDs + access levels).
- **Used for:** filtering/joining so the app list only includes apps the user should see.
- **Dependencies:** none.
- **Downstream consumers:** `qry_user_app_info` (via join).

#### `qry_all_apps`
- **Purpose:** Fetch metadata for all apps (name, description, shortlink, folder_id, etc.).
- **Used for:** display fields and linking.
- **Dependencies:** none.
- **Downstream consumers:** `qry_user_app_info` (via join).

#### `all_folders`
- **Purpose:** Folder metadata so apps can be grouped/identified by folder.
- **Dependencies:** none.
- **Downstream consumers:** `qry_user_app_info`.

#### `qry_user_prefs`
- **Purpose:** Fetch all preference rows for the current user from `user_app_prefs`.
- **Design choice:** Runs on page load only to avoid round-trip delays on every edit.
- **Dependencies:** `current_user.sid`
- **Downstream consumers:** `prefs_map` transformer (builds keyed object) and initialization of `prefsByAppId`.

#### `qry_user_app_info`
- **Purpose:** Build the *base dataset* of apps the user can access (no prefs merging).
- **Returns:** app id, shortlink, access_level, folder_name, default name, default description.
- **Dependencies:** `qry_all_apps`, `qry_all_user_apps`, `all_folders`
- **Notes:** Preference merging, hide/show, and sorting happen in `apps_view`, not here.


### Intermittent
#### `update_user_prefs`
- **Purpose:** Upsert a single preference row for `(app_id, user_id)`.
- **Trigger:** UI events (blur for text edits, immediate for checkbox toggles) via `draft_updated`.
- **Input:** Reads from `draftPref` (the single draft payload).
- **Output:** Returns the saved row via `RETURNING *`.
- **On success:**
  - Convert returned data to rows with `formatDataAsArray(update_user_prefs.data)`
  - Merge row into `prefsByAppId[app_id]`
  - Clear `draftPref`
  - UI re-renders from `apps_view` without re-querying prefs from DB

---

## JS Queries
#### `draft_updated`
- **Purpose:** Construct a normalized “draft payload” for the currently edited card and trigger `update_user_prefs`.
- **Called by:** event handlers on EditableTextArea + Checkbox components (scoped to the GridView item).
- **Inputs (via additionalScope):**
  - `item_app_id`
  - `item_app_name`
  - `item_app_desc`
  - `item_pinned`
  - `item_hide`
- **Behavior:**
  - Normalizes empty strings to `null`
  - Converts booleans to `0/1` for pinned/hide
  - Writes payload to `draftPref`
  - Triggers `update_user_prefs`

---

## Transformers

### `prefs_map`
- **Purpose:** Convert `qry_user_prefs` rows into a keyed lookup `{ [app_id]: prefRow }`.
- **Input:** `qry_user_prefs.data`
- **Output:** object keyed by `app_id`
- **Used by:** initialization of `prefsByAppId`.

### `apps_view`
- **Purpose:** Produce the final grid-ready list by merging:
  1) base app info (`qry_user_app_info`)
  2) committed prefs (`prefsByAppId`)
  3) current draft payload (`draftPref`, if it matches the row)
  then applying:
  - hide/show rules controlled by `toggleHiddenButton`
  - sorting rules (pinned first, then alphabetical)

- **Inputs:**
  - `qry_user_app_info.data`
  - `prefsByAppId.value`
  - `draftPref.value`
  - `toggleHiddenButton.value`

- **Output:** Array used as the GridView data source.

**Merge logic (conceptual):**
- `displayName = draft.app_name ?? pref.app_name ?? base.app_name`
- `displayDesc = draft.app_description ?? pref.app_description ?? base.default_desc`
- `pinned = draft.pinned ?? pref.pinned ?? 0`
- `app_hide = draft.app_hide ?? pref.app_hide ?? 0`

**Hide logic:**
- If toggleHiddenButton indicates “hide hidden apps”, filter out rows with `app_hide = 1`.
- Otherwise include them.

**Sort logic:**
- Sort a copy of the list (do not sort in place).
- pinned DESC, then app_name ASC (stable tie-breaker optional by id).

---

## Variables / Temporary States

### `prefsByAppId`
- **What:** Committed preferences map keyed by `app_id`
- **Set on:** page load from `prefs_map`
- **Updated on:** each successful `update_user_prefs` (merge `RETURNING *` row)
- **Why:** lets the UI reflect all edits made during the session without re-fetching DB rows

### `draftPref`
- **What:** single in-progress payload for the card currently being edited
- **Set/updated on:** component event handlers via `draft_updated`
- **Cleared on:** successful save
- **Why:** makes the edited card update instantly (optimistic UI) and provides the input payload to `update_user_prefs`

---

## Dependencies Overview

### Page load data flow
1. `qry_all_user_apps` + `qry_all_apps` + `all_folders` → `qry_user_app_info`
2. `qry_user_prefs` → `prefs_map` → initialize `prefsByAppId`
3. `qry_user_app_info` + `prefsByAppId` + `draftPref` + `toggleHiddenButton.value` → `apps_view`
4. GridView uses `apps_view` as its data source

### Edit/save flow (single field)
1. User edits an unlocked field
2. Component event handler calls `draft_updated` with the *current item’s* values
3. `draft_updated` writes normalized payload to `draftPref` and triggers `update_user_prefs`
4. `update_user_prefs` upserts and returns the saved row
5. On success: merge saved row into `prefsByAppId`, clear `draftPref`
6. `apps_view` recomputes and updates the grid (including resorting and hide/show)

---

## Adding More to This App
- If you add more preference fields:
  - Update `user_app_prefs` schema
  - Update payload construction in `draft_updated`
  - Update merge logic in `apps_view`
  - Update `update_user_prefs` SQL
- If you implement search/filter UI:
  - Do it in `apps_view` so it composes cleanly with hide/show + sorting