ping ={
 "ping-1"={  
  status           = "ENABLED"
  name             = "monitor-ping"
  period           = "EVERY_DAY"
  uri              = "https://www.one.newrelic.com"
  type             = "SIMPLE"
  locations_public = ["EU_WEST_1"]


  treat_redirect_as_failure = true
  validation_string                       = "success"


    }
}