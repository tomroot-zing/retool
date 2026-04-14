<Screen
  id="schedule_no_punch"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={4}
  _searchParams={[]}
  browserTitle={null}
  title="Scheduled No Punch"
  urlSlug={null}
  uuid="06ce092c-4c32-4ec2-9c89-d90d1af1cbad"
>
  <SqlQueryUnified
    id="qry_mark_ncns"
    actionType="INSERT"
    changeset={
      '[{"key":"emp_id","value":"{{ table25.selectedRow.emp_id }}"},{"key":"instance_date","value":"{{ moment(table25.selectedRow.sch_start_time).format(\\"YYYY-MM-DD HH:mm\\") }}"}]'
    }
    editorMode="gui"
    isMultiplayerEdited={false}
    resourceDisplayName="HUE (a2_retool)"
    resourceName="587c5aaa-56e6-42da-a73a-6748aeb3cb1c"
    runWhenModelUpdates={false}
    tableName="emp_ncns"
  >
    <Event
      id="e2d5f9a4"
      event="success"
      method="trigger"
      params={{}}
      pluginId="qry_emp_ncns"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Table
      id="table25"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ qry_scheduled_no_punch.data }}"
      defaultFilters={{
        0: {
          id: "760fa",
          columnId: "86d73",
          operator: "isBefore",
          value: "now()",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
    >
      <Column
        id="4ba2b"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
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
        id="40c92"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayname"
        label="First Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b4160"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={124.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="42031"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sch_name"
        label="Schedule"
        placeholder="Select option"
        position="center"
        size={156.140625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="983a1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="pos_name"
        label="Position"
        placeholder="Select option"
        position="center"
        size={182.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="86d73"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="sch_start_time"
        label="Sch start time"
        placeholder="Enter value"
        position="center"
        size={162.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="a3965"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="punch_start_time"
        label="Punch start time"
        placeholder="Enter value"
        position="center"
        size={141.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="3af8a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="calloff_type"
        label="Calloff type"
        placeholder="Enter value"
        position="center"
        size={111.515625}
        summaryAggregationMode="none"
      />
      <Column
        id="c8796"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="area_name"
        label="Attendance"
        placeholder="Select option"
        position="center"
        size={201.71875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="40c6b"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="button"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          variant: "solid",
          disabled: "{{ currentSourceRow.ncns  }}",
        }}
        groupAggregationMode="sum"
        key="emp_id"
        label="Mark as NCNS"
        placeholder="Enter value"
        position="center"
        referenceId="emp_id"
        size={100}
        summaryAggregationMode="none"
        valueOverride="No Call No Show"
      >
        <Event
          id="0d8d152f"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="qry_mark_ncns"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="34027"
        alignment="right"
        editable="false"
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
          id="8b6211f3"
          event="clickToolbar"
          method="exportData"
          pluginId="table25"
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
          id="ebf9ab3c"
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
          pluginId="qry_emp_ncns"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</Screen>
