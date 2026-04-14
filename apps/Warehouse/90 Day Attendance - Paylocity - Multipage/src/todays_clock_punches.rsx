<Screen
  id="todays_clock_punches"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={2}
  _searchParams={[]}
  browserTitle={null}
  title="Today's Clock Punches"
  urlSlug={null}
  uuid="b51032dd-03f3-4055-9304-705d25e169ff"
>
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table24"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_employees_with_punches.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="fd228"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="fd228"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="paylocity_id"
        label="Paylocity ID"
        placeholder="Enter value"
        position="center"
        size={118.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="e5afe"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayname"
        label="Displayname"
        placeholder="Enter value"
        position="center"
        size={108.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="c6692"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={185.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="5ee2d"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="start_time"
        label="Start time"
        placeholder="Enter value"
        position="center"
        size={176.046875}
        summaryAggregationMode="none"
      />
      <Column
        id="8d4f9"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="end_time"
        label="End time"
        placeholder="Enter value"
        position="center"
        size={188.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="88129"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="duration"
        label="Duration"
        placeholder="Enter value"
        position="center"
        size={82.21875}
        summaryAggregationMode="none"
      />
      <Column
        id="c332f"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="punch_origin"
        label="Punch origin"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="87c42"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="dept_name"
        label="Dept name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
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
          id="4000d274"
          event="clickToolbar"
          method="exportData"
          pluginId="table24"
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
          id="b90a5e7b"
          event="clickToolbar"
          method="refresh"
          pluginId="table24"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
