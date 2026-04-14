<Screen
  id="schedule_summary"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Schedule Summary"
  urlSlug=""
  uuid="42af682e-c747-44d0-8307-142b125bb41e"
>
  <SqlQueryUnified
    id="qry_calloffs_for_date"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/qry_calloffs_for_date.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="make_sch_ack_array"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/make_sch_ack_array.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="4278de29"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="update_sch_ack"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SqlQueryUnified
    id="update_sch_ack"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="calloff_id"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    records="{{make_sch_ack_array.data}}"
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="emp_calloffs"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="fbf1f9fd"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="qry_calloffs_for_date"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlTransformQuery
    id="qry_calloffs_with_postions"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/qry_calloffs_with_postions.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_wiw_shift_positions_summary"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/qry_wiw_shift_positions_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="qry_shifts_summary"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query="shifts?start={{moment(dateRange1.value).format('YYYYMMDD')}}&end={{moment(dateRange1.value).add(1, 'd').format('YYYYMMDD')}}&include_allopen=true"
    resourceDisplayName="WhenIWork"
    resourceName="8a72345d-3fd9-4083-a365-326ec9ff157a"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_wiw_shift_locations_summary"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/qry_wiw_shift_locations_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_wiw_shift_shifts_summary"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/qry_wiw_shift_shifts_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_today_schedule_am_summary"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/qry_today_schedule_am_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_wiw_shift_users_summary"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/qry_wiw_shift_users_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="query24"
    isMultiplayerEdited={false}
    query={include("../lib/query24.sql", "string")}
    resourceName="SQL Transforms"
  />
  <SqlTransformQuery
    id="qry_today_schedule_pm_summary"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/qry_today_schedule_pm_summary.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_today_schedule_test"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/qry_today_schedule_test.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_today_schedule_am_summary_open"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/qry_today_schedule_am_summary_open.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Include src="./tabbedContainer1.rsx" />
  </Frame>
</Screen>
