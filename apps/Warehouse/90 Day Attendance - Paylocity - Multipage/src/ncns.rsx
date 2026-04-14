<Screen
  id="ncns"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={5}
  _searchParams={[]}
  browserTitle={null}
  title="No Call No Shows"
  urlSlug={null}
  uuid="5991057e-bc13-4587-a57e-681bb8c35243"
>
  <SqlQueryUnified
    id="qry_ncns_list"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/qry_ncns_list.sql", "string")}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="qry_ncns"
    isMultiplayerEdited={false}
    query={include("../lib/qry_ncns.sql", "string")}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="qry_delete_ncns"
    actionType="DELETE_BY"
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ table22.selectedRow.id }}","operation":"="}]'
    }
    notificationDuration={4.5}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="emp_ncns"
    updateSetValueDynamically={true}
  >
    <Event
      id="b5542a72"
      event="success"
      method="trigger"
      params={{}}
      pluginId="qry_ncns_list"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="a4c9bdc8"
      event="success"
      method="trigger"
      params={{}}
      pluginId="qry_ncns"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <NumberInput
      id="numberInput1"
      currency="USD"
      inputValue={0}
      label="Days of History to Include"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="30"
    />
    <Table
      id="table21"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_ncns.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="b6933"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="emp_id"
        label="Emp ID"
        placeholder="Enter value"
        position="center"
        size={78.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="6a7ae"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayname"
        label="First Name"
        placeholder="Enter value"
        position="center"
        size={108.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="bc009"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last Name"
        placeholder="Enter value"
        position="center"
        size={165.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="f292b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="ncns_count"
        label="NCNS Count"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="81aaddb3"
          event="clickToolbar"
          method="exportData"
          pluginId="table21"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="41e02215"
          event="clickToolbar"
          method="refresh"
          pluginId="table21"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table22"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_ncns_list.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="87c8b"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="9257a"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="displayname"
        label="First Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="0badb"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="last_name"
        label="Last Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="171c3"
        alignment="left"
        editable={false}
        format="datetime"
        groupAggregationMode="none"
        key="instance_date"
        label="Scheduled Shift"
        placeholder="Enter value"
        position="center"
        size={176}
        summaryAggregationMode="none"
      />
      <Column
        id="fcbfe"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="button"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          variant: "solid",
        }}
        groupAggregationMode="sum"
        key="id"
        label="Remove NCNS"
        placeholder="Enter value"
        position="center"
        referenceId="removeNcns"
        size={100}
        summaryAggregationMode="none"
        valueOverride="Delete"
      >
        <Event
          id="e254d2f5"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="qry_delete_ncns"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="87c8b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="d6c73183"
          event="clickToolbar"
          method="exportData"
          pluginId="table22"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="77904554"
          event="clickToolbar"
          method="refresh"
          pluginId="table22"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
