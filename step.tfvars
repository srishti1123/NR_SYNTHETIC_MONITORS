step_monitors = {
  "step_monitor_1" = {
    name                                    = "Sample Step Monitor 1"
    enable_screenshot_on_failure_and_script = true
    locations_public                        = ["US_EAST_1", "US_EAST_2"]
    period                                  = "EVERY_DAY"
    status                                  = "ENABLED"
    runtime_type                            = "CHROME_BROWSER"
    runtime_type_version                    = "100"
    steps = [
      {
        ordinal = 0
        type    = "NAVIGATE"
        values  = ["https://www.newrelic.com"]
        
      }
    ]
  }
}
