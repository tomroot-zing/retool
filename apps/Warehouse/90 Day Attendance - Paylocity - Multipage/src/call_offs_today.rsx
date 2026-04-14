<Screen
  id="call_offs_today"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={3}
  _searchParams={[]}
  browserTitle={null}
  title="Call Offs Today"
  urlSlug={null}
  uuid="71273c56-3381-4dc1-93c6-183340941e21"
>
  <connectResource id="query25" _componentId="select1" />
  <SqlQueryUnified
    id="qry_update_emp_id"
    actionType="UPDATE_BY"
    changeset={'[{"key":"emp_id","value":"{{ select1.selectedItem.emp_id }}"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"calloff_id","value":"{{ table26.selectedRow.calloff_id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="emp_calloffs"
    updateSetValueDynamically={true}
  >
    <Event
      id="1b6c9481"
      event="success"
      method="trigger"
      params={{}}
      pluginId="qry_calloffs_today_position"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="e070fdba"
      event="success"
      method="hide"
      params={{}}
      pluginId="modalFrame1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="f8e975e2"
      event="success"
      method="clearValue"
      params={{}}
      pluginId="select1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table26"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_calloffs_today_position.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="5490d"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: false }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="emp_id"
        label="Emp ID"
        placeholder="Enter value"
        position="center"
        size={80.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="35580"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="paylocity_id"
        label="Paylocity ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="376fa"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="nickname"
        label="First Name"
        placeholder="Enter value"
        position="center"
        size={119.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="a9fa3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last Name"
        placeholder="Enter value"
        position="center"
        size={93.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="b91d0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="entered_name"
        label="Entered name"
        placeholder="Enter value"
        position="center"
        size={118}
        summaryAggregationMode="none"
      />
      <Column
        id="71206"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "-05:00",
          displayTimeZone: "local",
        }}
        groupAggregationMode="none"
        key="calloff_date"
        label="CallOff Date"
        placeholder="Enter value"
        position="center"
        size={175.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="14e27"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="calloff_type"
        label="CallOff Type"
        placeholder="Select option"
        position="center"
        size={112.296875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="66b6f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="schedule"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={190.140625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5ae1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="position"
        label="Position"
        placeholder="Select option"
        position="center"
        size={68.375}
        summaryAggregationMode="none"
      />
      <Column
        id="016ba"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="calloff_id"
        label="Calloff ID"
        placeholder="Enter value"
        position="center"
        size={68.171875}
        summaryAggregationMode="none"
      />
      <Action id="49786" icon="bold/interface-edit-pencil" label="Update EmpID">
        <Event
          id="1e2aa22f"
          event="clickAction"
          method="show"
          params={{}}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
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
          id="d87c63a1"
          event="clickToolbar"
          method="exportData"
          pluginId="table26"
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
          id="91a84ba1"
          event="clickToolbar"
          method="trigger"
          params={{
            map: {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          }}
          pluginId="qry_calloffs_for_today"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
