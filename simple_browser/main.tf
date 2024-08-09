resource "newrelic_synthetics_monitor" "monitor" {
  for_each = var.simple_browser
  status           = each.value.status  
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = each.value.locations_public

  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  validation_string                       = each.value.validation_string

}