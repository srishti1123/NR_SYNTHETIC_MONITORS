simple_browser ={
 "browser-1"={  
  status           = "ENABLED"
  name             = "monitor"
  period           = "EVERY_DAY"
  uri              = "https://www.one.newrelic.com"
  type             = "BROWSER"
  locations_public = ["EU_WEST_1"]


  enable_screenshot_on_failure_and_script = true
  validation_string                       = "success"
  //runtime_type                            = "CHROME_BROWSER"

    }
}