data "local_file" "script" {
 for_each = var.script-api
   filename = "${path.module}/../tfvars/script_api/${each.value.file_path}"
}
resource "newrelic_synthetics_script_monitor" "monitor" {
    for_each = var.script-api
  status           = each.value.status          
  name             = each.value.name            
  type             =each.value.type            
  locations_public =  each.value.locations_public 
  period           =  each.value.period  
  script               = data.local_file.script[each.key].content
 
}
 