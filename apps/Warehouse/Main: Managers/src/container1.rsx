<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="0"
  hidden=""
  loading="{{ update_user_prefs.isFetching }}"
  padding="12px"
  showBody={true}
  style={{ map: { background: '{{ pinned.value ? "#F7ECC2" : "#FFFFFF" }}' } }}
  styleContext={{ ordered: [] }}
>
  <View id="22943" hidden="{{ item.app_hide===1 }}" viewKey="View 1">
    <EditableText
      id="editableName"
      editIcon="bold/interface-edit-write-1"
      label=""
      labelPosition="top"
      loading="{{ update_user_prefs.isFetching }}"
      placeholder="Enter value"
      readOnly="{{ toggleLockButton.value }}"
      style={{ fontSize: "h4Font", fontWeight: "h4Font", fontFamily: "h4Font" }}
      value="{{ item.app_name }}"
    >
      <Event
        id="c952f91e"
        event="change"
        method="run"
        params={{
          map: {
            src: "draft_updated.trigger(\n  { additionalScope:\n    { item_app_id: item.id,\n      item_app_name: editableName.value,\n      item_app_desc: editableDesc.value,\n      item_pinned: pinned.value,\n      item_hide: app_hide.value\n    }\n  }\n);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Divider id="divider1" margin="0" />
    <EditableNumber
      id="card_pref_id"
      currency="USD"
      hidden="true"
      label=""
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ item.pref_id }}"
    />
    <EditableTextArea
      id="editableTextArea1"
      disabled=""
      editIcon="bold/interface-edit-write-1"
      label="Description"
      labelPosition="top"
      margin="0"
      placeholder="No description written"
      readOnly="true"
      value="{{ item.default_desc }}"
    />
    <Divider id="divider2" margin="0" />
    <EditableTextArea
      id="editableDesc"
      editIcon="bold/interface-edit-write-1"
      enforceMaxLength={true}
      label="Your Notes"
      labelPosition="top"
      loading="{{ update_user_prefs.isFetching }}"
      margin="0"
      maxLength="255"
      placeholder={'{{ toggleLockButton.value ? "" : "Type here"}}'}
      readOnly="{{ toggleLockButton.value }}"
      showCharacterCount={true}
      value="{{ item.user_app_desc }}"
    >
      <Event
        id="70426574"
        event="change"
        method="run"
        params={{
          map: {
            src: "draft_updated.trigger(\n  { additionalScope:\n    { item_app_id: item.id,\n      item_app_name: editableName.value,\n      item_app_desc: editableDesc.value,\n      item_pinned: pinned.value,\n      item_hide: app_hide.value\n    }\n  }\n);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </EditableTextArea>
    <Checkbox
      id="pinned"
      disabled="{{ toggleLockButton.value || update_user_prefs.isFetching }}"
      label={'{{ pinned.value ? "📌" : "🚫📌"}}'}
      labelWidth="100"
      style={{ checkedBackground: "highlight", check: "highlight" }}
      value="{{ item.pinned }}"
    >
      <Event
        id="b972b9d5"
        enabled=""
        event="change"
        method="run"
        params={{
          map: {
            src: "draft_updated.trigger(\n  { additionalScope:\n    { item_app_id: item.id,\n      item_app_name: editableName.value,\n      item_app_desc: editableDesc.value,\n      item_pinned: pinned.value,\n      item_hide: app_hide.value\n    }\n  }\n);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Button
      id="button3"
      horizontalAlign="right"
      iconAfter="bold/interface-upload-website"
      text="Open"
    >
      <Event
        id="955a0edb"
        event="click"
        method="openUrl"
        params={{
          map: { url: "https://zingermans.tryretool.com/app/{{ item.id }}" },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Checkbox
      id="app_hide"
      disabled="{{ toggleLockButton.value || update_user_prefs.isFetching }}"
      label="Hide"
      labelWidth="100"
      value="{{ item.app_hide }}"
    >
      <Event
        id="be67a0c7"
        event="change"
        method="run"
        params={{
          map: {
            src: "draft_updated.trigger(\n  { additionalScope:\n    { item_app_id: item.id,\n      item_app_name: editableName.value,\n      item_app_desc: editableDesc.value,\n      item_pinned: pinned.value,\n      item_hide: app_hide.value\n    }\n  }\n);",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
  </View>
</Container>
