<GlobalFunctions>
  <SqlTransformQuery
    id="qry_employees_with_punches"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_employees_with_punches.sql", "string")}
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
  <SqlQueryUnified
    id="qry_calloffs_for_today"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_calloffs_for_today.sql", "string")}
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
  <WorkflowRun
    id="qry_todays_punches_raw"
    isMultiplayerEdited={false}
    resourceName="WorkflowRun"
    resourceTypeOverride=""
    runWhenModelUpdates={true}
    transformer=""
    workflowId="2920d1b2-59df-41d9-97fe-6eb2c8f2980b"
    workflowParams={include("./lib/qry_todays_punches_raw.json", "string")}
    workflowRunBodyType="json"
  />
  <SqlTransformQuery
    id="qry_today_schedule"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_today_schedule.sql", "string")}
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
    id="qry_wiw_shift_locations"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_wiw_shift_locations.sql", "string")}
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
    id="qry_wiw_shift_shifts"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_wiw_shift_shifts.sql", "string")}
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
    id="qry_wiw_shift_users"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_wiw_shift_users.sql", "string")}
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
    id="qry_wiw_shift_positions"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_wiw_shift_positions.sql", "string")}
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
  <SqlQueryUnified
    id="qry_hue_employees"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_hue_employees.sql", "string")}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="qry_shifts"
    cacheKeyTtl={300}
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="shifts?start={{moment(dateRange2.value).format('YYYYMMDD')}}&end={{moment(dateRange2.value).add(1, 'd').format('YYYYMMDD')}}"
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
    id="qry_scheduled_no_punch"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_scheduled_no_punch.sql", "string")}
    queryFailureConditions="[]"
    resourceName="SQL Transforms"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="qry_emp_ncns"
    query={include("./lib/qry_emp_ncns.sql", "string")}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="qry_attendance_for_today"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/qry_attendance_for_today.sql", "string")}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="qry_late_per_schedule"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_late_per_schedule.sql", "string")}
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
    id="qry_calloffs_today_position"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/qry_calloffs_today_position.sql", "string")}
    resourceName="SQL Transforms"
    showSuccessToaster={false}
  />
</GlobalFunctions>
