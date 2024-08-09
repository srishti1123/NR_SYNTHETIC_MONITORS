variable "step_monitors" {
  type = map(object({
    name                                    = string
    enable_screenshot_on_failure_and_script = bool
    locations_public                        = list(string)
    period                                  = string
    status                                  = string
    runtime_type                            = string
    runtime_type_version                    = string
    steps                                   = list(object({
      ordinal = number
      type    = string
      values  = list(string)
    }))
  }))
}
