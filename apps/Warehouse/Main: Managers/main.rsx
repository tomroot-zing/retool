<App>
  <Include src="./functions.rsx" />
  <DocumentTitle id="$customDocumentTitle" value="Tools Homepage" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    style={{ map: { canvas: "canvas" } }}
    type="main"
  >
    <Container
      id="container2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      style={{ background: "canvas", border: "canvas" }}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <ListViewBeta
          id="gridView"
          _primaryKeys="{{ item.id }}"
          data="{{ apps_view.value }}"
          direction="horizontal"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          numColumns="4"
          padding="0"
        >
          <Include src="./src/container1.rsx" />
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</App>
