resource "newrelic_synthetics_monitor" "monitor-example" {
  for_each = var.ping
  status           = each.value.status  
  name             = each.value.name
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = each.value.locations_public

  treat_redirect_as_failure  = each.value.treat_redirect_as_failure
  validation_string          = each.value.validation_string

}