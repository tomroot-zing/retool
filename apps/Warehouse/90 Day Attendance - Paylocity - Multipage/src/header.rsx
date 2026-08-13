<Frame
  id="$header"
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Text
    id="text1"
    _disclosedFields={{ array: [] }}
    marginType="normal"
    value="## Attendance Detail"
    verticalAlign="center"
  />
  <AuthLogin
    id="authLogin4"
    _disclosedFields={{ array: [] }}
    authResourceDisplayName="WhenIWork"
    authResourceName="8a72345d-3fd9-4083-a365-326ec9ff157a"
    authType="custom"
  />
  <Date
    id="dateRange1"
    _disclosedFields={{ array: ["iconBefore"] }}
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar-remove"
    label="Date Range"
    labelPosition="top"
    marginType="normal"
    value="{{ new Date() }}"
  />
</Frame>
