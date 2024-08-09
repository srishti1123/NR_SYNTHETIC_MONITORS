variable "simple_browser" {
  type =map(object({
 status           =  string 
  name             = string 
  period           = string
  uri              = string 
  type             = string 
  locations_public =list(string)  


  enable_screenshot_on_failure_and_script = bool 
  validation_string                       = string    
  }))
}