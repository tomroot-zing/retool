//  console.groupCollapsed("[draft_updated]");

//  console.log("inputs (raw)", {
//    item_app_id,
//    item_app_name,
//    item_app_desc,
//    item_pinned,
//    item_hide,
//  });

//  console.log("draftPref BEFORE", draftPref.value);
//  console.log("prefsByAppId BEFORE keys", Object.keys(prefsByAppId.value || {}).length);

// Build draft
const draft = {
  app_id: item_app_id,

  app_name: item_app_name === "" ? null : (item_app_name ?? null),
  app_description: item_app_desc === "" ? null : item_app_desc,
  pinned: item_pinned ? 1 : 0,
  app_hide: item_hide ? 1 : 0,
};

// console.log("draft (computed)", draft);

// Write to state + trigger DB write
draftPref.setValue(draft);

// console.log("draftPref AFTER setValue (note: state may update async)", draftPref.value);

//  console.log("triggering update_user_prefs...");
//  console.groupEnd();

update_user_prefs.trigger();