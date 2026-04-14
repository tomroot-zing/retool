<Container
  id="tabbedContainer1"
  _gap="0px"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="text2"
      _disclosedFields={{ array: [] }}
      marginType="normal"
      value="{{moment().format()}}"
      verticalAlign="center"
    />
  </Header>
  <View
    id="bd764"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Schedule Summary"
  >
    <Text id="text4" value="## PM Schedule" verticalAlign="center" />
    <Text id="text3" value="## AM Schedule" verticalAlign="center" />
    <Table
      id="table19"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_today_schedule_pm_summary.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={[
        { ordered: [{ columnId: "37a31" }] },
        { ordered: [{ columnId: "00274" }] },
        { ordered: [{ columnId: "1e076" }] },
        { ordered: [{ columnId: "a1866" }] },
      ]}
      groupedColumnConfig={{ size: 161.734375, expandByDefault: false }}
      rowHeight="small"
      rowSelection="none"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="a1866"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="location_name"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={108.71875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="84674"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="position_name"
        label="Position"
        placeholder="Select option"
        position="center"
        size={94.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="88167"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="employee_code"
        label="Employee code"
        placeholder="Enter value"
        position="center"
        size={102.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="92009"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={75.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="b1124"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={77.75}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="01033428"
          event="clickToolbar"
          method="refresh"
          pluginId="table19"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table18"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_today_schedule_am_summary.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={[
        { ordered: [{ columnId: "37a31" }] },
        { ordered: [{ columnId: "00274" }] },
        { ordered: [{ columnId: "5e70c" }] },
        { ordered: [{ columnId: "fab41" }, { sortDirection: "asc" }] },
      ]}
      groupedColumnConfig={{ size: 193.484375, expandByDefault: false }}
      rowHeight="small"
      rowSelection="none"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="fab41"
        alignment="left"
        editable="false"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="false"
        key="location_name"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={138.25}
      />
      <Column
        id="8b279"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="position_name"
        label="Position"
        placeholder="Select option"
        position="center"
        size={109.984375}
      />
      <Column
        id="497a8"
        alignment="left"
        backgroundColor={
          '{{ currentSourceRow.first_name===\'Open\'?"FDE68A":"FFFFFF" }}'
        }
        format="string"
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={98.046875}
        summaryAggregationMode="none"
      />
      <Column
        id="b49a5"
        alignment="left"
        backgroundColor={
          '{{ currentSourceRow.first_name===\'Open\'?"FDE68A":"FFFFFF" }}'
        }
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={74.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="52b60"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="employee_code"
        label="Employee code"
        placeholder="Enter value"
        position="center"
        size={102.78125}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="61ebb858"
          event="clickToolbar"
          method="refresh"
          pluginId="table18"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="02e20" viewKey="Today's Schedule">
    <Table
      id="table14"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_today_schedule.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="2d261"
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
          id="55fc3936"
          event="clickToolbar"
          method="exportData"
          pluginId="table14"
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
          id="84c77405"
          event="clickToolbar"
          method="refresh"
          pluginId="table14"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="b8add" viewKey="Today's Clock Punches" />
  <View id="013d8" viewKey="Scheduled No Punch" />
  <View
    id="6f39e"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Call Offs for Today"
    viewKey="View 7"
  />
  <View
    id="af57d"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Late Per Schedule"
  />
</Container>
