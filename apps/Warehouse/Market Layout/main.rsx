<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <Select
      id="select_mkt_prefix"
      _defaultValue={null}
      captionByIndex=""
      colorByIndex=""
      data="{{ qry_mkt_prefixes.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Market Prefix"
      labels="{{item.prefix}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.prefix }}%"
    />
    <TableLegacy
      id="tbl_layout"
      _columns={["rack", "1", "2", "3", "4", "5", "6", "7", "8"]}
      _compatibilityMode={false}
      columnAlignment={{
        ordered: [
          { 1: "center" },
          { 2: "center" },
          { 3: "center" },
          { 4: "center" },
          { 5: "center" },
          { 6: "center" },
          { 7: "center" },
          { rack: "center" },
          { 8: "center" },
        ],
      }}
      columnColors={{
        1: "",
        2: "",
        3: "",
        4: "",
        5: "",
        6: "",
        7: "",
        8: "",
        9: "",
        10: "",
        A: "",
        B: "",
        C: "",
        D: "",
        E: "",
        F: "",
        my_cols: "",
        G: "",
        H: "",
        my_rows: "",
        rack: "",
        rows: "",
      }}
      customButtonName=""
      data="{{ qry_layout_pivot.data }}"
      defaultSelectedRow="none"
      disableRowSelectInteraction={true}
      doubleClickToEdit={true}
      overflowType="scroll"
      showColumnBorders={true}
      showDownloadButton={false}
      showFilterButton={false}
      showRefreshButton={false}
    />
  </Frame>
</App>
