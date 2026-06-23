<Frame
  id="$header"
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  margin="4px 8px"
  padding="8px 12px"
  sticky={true}
  style={{ map: { "primary-surface": "canvas" } }}
  type="header"
>
  <Text
    id="text1"
    marginType="normal"
    value="## Hello {{ current_user.firstName || 'friend' }}! 👋"
    verticalAlign="center"
  />
  <ToggleButton
    id="toggleLockButton"
    horizontalAlign="stretch"
    iconForFalse="bold/interface-unlock"
    iconForTrue="bold/interface-lock"
    iconPosition="right"
    style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
    styleVariant="outline"
    text="{{ self.value ? 'Locked' : 'Unlocked' }}"
    value="true"
  />
  <ToggleButton
    id="toggleHiddenButton"
    horizontalAlign="stretch"
    iconForFalse="bold/interface-edit-view-off"
    iconForTrue="bold/interface-edit-view"
    iconPosition="replace"
    style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
    styleVariant="outline"
    tooltipText="Currently {{ self.value ? 'showing' : 'hiding' }} hidden apps"
    value="true"
  />
  <Text
    id="text7"
    style={{ map: { color: "rgba(101, 101, 101, 1)" } }}
    value={
      'To change an app name, notes, or pinned status, click the "Locked" toggle on the right. These settings are personalized to your account only.'
    }
    verticalAlign="center"
  />
</Frame>
