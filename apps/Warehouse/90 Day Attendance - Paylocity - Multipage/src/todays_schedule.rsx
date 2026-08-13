<Screen
  id="todays_schedule"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={1}
  _searchParams={[]}
  browserTitle={null}
  title="Today's Schedule"
  urlSlug={null}
  uuid="bdc03129-837f-4148-a0ef-33148ffc6b6a"
>
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text6" value="### Today's Schedule" verticalAlign="center" />
    <Table
      id="table23"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_today_schedule.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="26537"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="employee_code"
        label="Employee code"
        placeholder="Enter value"
        position="center"
        size={139}
        summaryAggregationMode="none"
      />
      <Column
        id="25b7f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayname"
        label="Displayname"
        placeholder="Enter value"
        position="center"
        size={175}
        summaryAggregationMode="none"
      />
      <Column
        id="a8322"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={75.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="10515"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={162.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="ba6a3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sch_name"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={184.25}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ad074"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="pos_name"
        label="Position"
        placeholder="Select option"
        position="center"
        size={160.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="2d261"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="emp_id"
        label="Emp ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="00cfe"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="start_time"
        label="Start time"
        placeholder="Enter value"
        position="center"
        size={187}
        summaryAggregationMode="none"
      />
      <Column
        id="2fb67"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="end_time"
        label="End time"
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
          id="255ce029"
          event="clickToolbar"
          method="exportData"
          pluginId="table23"
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
          id="e3a70118"
          event="clickToolbar"
          method="refresh"
          pluginId="table23"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
