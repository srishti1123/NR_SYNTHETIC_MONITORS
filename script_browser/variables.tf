variable "script" {
  type=map(object({
 status           =string    
  name             =   string   
  type             =string          
  locations_public =       list(string)       
  period           =     string   

  enable_screenshot_on_failure_and_script = bool   

  file_path =string                    
  }))
}