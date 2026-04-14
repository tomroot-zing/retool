<Screen
  id="late_per_schedule"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={6}
  _searchParams={[]}
  browserTitle={null}
  title="Late Per Schedule"
  urlSlug={null}
  uuid="28f35569-fe3d-4336-b4f2-ecb4f93d7179"
>
  <Frame
    id="$main7"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table27"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_late_per_schedule.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "c3b81", direction: "desc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="f0abe"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={122.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="b1293"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayname"
        label="Displayname"
        placeholder="Enter value"
        position="center"
        size={126}
        summaryAggregationMode="none"
      />
      <Column
        id="aed4d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={108.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="635c0"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sch_name"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={169.140625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7bf25"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="pos_name"
        label="Position"
        placeholder="Select option"
        position="center"
        size={169.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="4f8ef"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="sch_start"
        label="Scheduled Start"
        placeholder="Enter value"
        position="center"
        size={161.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="a8845"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="punch_start"
        label="Punch Time"
        placeholder="Enter value"
        position="center"
        size={163.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="c3b81"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="Difference"
        placeholder="Enter value"
        position="center"
        referenceId="difference"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ moment(currentSourceRow.punch_start).diff(moment(currentSourceRow.sch_start), 'minutes') }} mins"
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
          id="542c65da"
          event="clickToolbar"
          method="exportData"
          pluginId="table27"
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
          id="28eb728d"
          event="clickToolbar"
          method="refresh"
          pluginId="table27"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
