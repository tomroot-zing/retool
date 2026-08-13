<Frame
  id="$header2"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Text
    id="text5"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="## Attendance Detail"
    verticalAlign="center"
  />
  <Date
    id="dateRange2"
    _disclosedFields={{ array: ["iconBefore"] }}
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar-remove"
    label="Date Range"
    labelPosition="top"
    marginType="normal"
    value="{{ new Date() }}"
  />
  <AuthLogin
    id="authLogin5"
    _disclosedFields={{ array: [] }}
    authResourceDisplayName="WhenIWork"
    authResourceName="8a72345d-3fd9-4083-a365-326ec9ff157a"
    authType="custom"
  />
</Frame>
