data "local_file" "script_content" {
    for_each = var.script
   filename = "${path.module}/../${each.value.file_path}"
}

resource "newrelic_synthetics_script_monitor" "monitor" {
  for_each = var.script
  status           = each.value.status          
  name             = each.value.name            
  type             =each.value.type            
  locations_public =  each.value.locations_public 
  period           =  each.value.period                        

  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script                    

  script =data.local_file.script_content[each.key].content

}