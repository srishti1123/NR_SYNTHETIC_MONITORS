resource "newrelic_synthetics_broken_links_monitor" "foo" {
 for_each = var.broken
  name                 = each.value.name        
  uri                  = each.value.uri
  locations_public     =  each.value.locations_public
  period               =each.value.period 
  status               = each.value.status
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version
}