<GlobalFunctions>
  <SqlQueryUnified
    id="qry_layout_pivot"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_layout_pivot.sql", "string")}
    queryTimeout="10001"
    resourceDisplayName="ZMO_Eve"
    resourceName="6a81a697-1bb8-4622-8d67-6cde15032dd8"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="qry_mkt_prefixes"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/qry_mkt_prefixes.sql", "string")}
    resourceDisplayName="ZMO_Eve"
    resourceName="6a81a697-1bb8-4622-8d67-6cde15032dd8"
    shouldEnableBatchQuerying={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
</GlobalFunctions>
