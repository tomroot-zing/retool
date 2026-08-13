<GlobalFunctions>
  <Folder id="QueryOnPageLoad">
    <SqlTransformQuery
      id="qry_user_app_info"
      enableTransformer={true}
      isMultiplayerEdited={false}
      query={include("./lib/qry_user_app_info.sql", "string")}
      resourceName="SQL Transforms"
      transformer=""
    />
    <SqlQueryUnified
      id="qry_user_prefs"
      isMultiplayerEdited={false}
      query={include("./lib/qry_user_prefs.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="f67a4310-99e3-4ab9-bc19-8a96b8b120f4"
      resourceTypeOverride=""
      warningCodes={[]}
    />
    <RESTQuery
      id="all_folders"
      enableTransformer={true}
      isMultiplayerEdited={false}
      query="folders"
      resourceDisplayName="Retool Internal API"
      resourceName="c0dd8870-76d4-4a54-bd73-51308c4eb946"
      transformer="return data.data"
    />
    <RESTQuery
      id="qry_all_apps"
      enableTransformer={true}
      isMultiplayerEdited={false}
      query="apps"
      resourceDisplayName="Retool Internal API"
      resourceName="c0dd8870-76d4-4a54-bd73-51308c4eb946"
      transformer="return data.data"
    />
    <RESTQuery
      id="qry_all_user_apps"
      body={
        '[{"key":"subject","value":"{\\"type\\":\\"user\\",\\"id\\":\\"{{ current_user.sid }}\\"}"},{"key":"object_type","value":"app"},{"key":"","value":""}]'
      }
      bodyType="json"
      isMultiplayerEdited={false}
      query="permissions/listObjects"
      resourceDisplayName="Retool Internal API"
      resourceName="c0dd8870-76d4-4a54-bd73-51308c4eb946"
      type="POST"
    >
      <Event
        id="67db7698"
        event="failure"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "error",
              title: "Fetching qry_all_user_apps failed — please refresh page",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="QueryOnChange">
    <JavascriptQuery
      id="draft_updated"
      _additionalScope={[
        "item_app_id",
        "item_app_name",
        "item_app_desc",
        "item_pinned",
        "item_hide",
      ]}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/draft_updated.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <SqlQueryUnified
      id="update_user_prefs"
      isMultiplayerEdited={false}
      query={include("./lib/update_user_prefs.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="f67a4310-99e3-4ab9-bc19-8a96b8b120f4"
      runWhenModelUpdates={false}
      warningCodes={[]}
    >
      <Event
        id="2a30d5e8"
        event="success"
        method="run"
        params={{
          map: {
            src: '// console.groupCollapsed("[update_user_prefs SUCCESS]");\n\nconst rows = formatDataAsArray(update_user_prefs.data);\n// console.log("rows", rows);\n\nconst saved = rows?.[0];\n// console.log("saved", saved);\n\nif (!saved) {\n  //  console.warn("No saved row after formatDataAsArray");\n  //  console.groupEnd();\n  return;\n}\n\nconst next = { ...(prefsByAppId.value || {}) };\nnext[saved.app_id] = saved;\nprefsByAppId.setValue(next);\n\n// clear draft\ndraftPref.setValue(null);\n\n//  console.log("prefsByAppId keys after", Object.keys(next).length);\n//  console.groupEnd();',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="08f4edf9"
        event="failure"
        method="run"
        params={{
          map: {
            src: 'console.groupCollapsed("[update_user_prefs FAILURE]");\nconsole.error("error", update_user_prefs.error);\nconsole.error("draftPref at failure", draftPref.value);\nconsole.groupEnd();',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="Transformers">
    <Function
      id="prefs_map"
      funcBody={include("./lib/prefs_map.js", "string")}
    />
    <Function
      id="apps_view"
      funcBody={include("./lib/apps_view.js", "string")}
    />
  </Folder>
  <Folder id="TemporaryStates">
    <State id="prefsByAppId" value="{{ prefs_map.value }}" />
    <State id="draftPref" />
  </Folder>
</GlobalFunctions>
