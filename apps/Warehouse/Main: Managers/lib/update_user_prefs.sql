INSERT INTO user_app_prefs (app_id, user_id, app_name, app_description, pinned, app_hide)
VALUES (
  {{ draftPref.value?.app_id }},
  {{ current_user.sid }},
  {{ draftPref.value?.app_name }},
  {{ draftPref.value?.app_description }},
  {{ draftPref.value?.pinned }},
  {{ draftPref.value?.app_hide }}
)
ON CONFLICT (app_id, user_id)
DO UPDATE SET
  app_name        = EXCLUDED.app_name,
  app_description = EXCLUDED.app_description,
  pinned          = EXCLUDED.pinned,
  app_hide        = EXCLUDED.app_hide
RETURNING *;