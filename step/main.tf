resource "newrelic_synthetics_step_monitor" "step_monitor" {
  for_each = var.step_monitors

  name                                    = each.value.name
  enable_screenshot_on_failure_and_script = each.value.enable_screenshot_on_failure_and_script
  locations_public                        = each.value.locations_public
  period                                  = each.value.period
  status                                  = each.value.status
  runtime_type                            = each.value.runtime_type
  runtime_type_version                    = each.value.runtime_type_version

  dynamic "steps" {
    for_each = each.value.steps
    content {
      ordinal = steps.value.ordinal
      type    = steps.value.type
      values  = steps.value.values
    }
  }
}
