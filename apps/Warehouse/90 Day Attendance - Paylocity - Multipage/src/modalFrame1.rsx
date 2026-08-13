<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Assign to Known Employee"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="76efec87"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text7"
      value="__Entered Name__:  {{ table26.selectedRow.entered_name }}"
      verticalAlign="center"
    />
    <Button id="button1" submitTargetId="" text="Update Call Off">
      <Event
        id="5e6ad579"
        event="click"
        method="trigger"
        params={{}}
        pluginId="qry_update_emp_id"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Select
      id="select1"
      data="{{ qry_hue_employees.data }}"
      emptyMessage="No options"
      label="Known Staff"
      labelPosition="top"
      labels="{{ `${item.nickname} ${item.last_name}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.emp_id }}"
    />
  </Body>
</ModalFrame>
