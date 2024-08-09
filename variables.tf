variable "broken" {
  type=map(object({
  name                 =string                 
  uri                  =string                 
  locations_public     =  list(string)         
  period               =  string               
  status               =   string          
  runtime_type        =     string         
  runtime_type_version =       string           
  }))
}
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
variable "ping" {
  type = any
}
variable "script-api" {
  type=map(object({
 status           =string    
  name             =   string   
  type             =string          
  locations_public =       list(string)       
  period           =     string      

  file_path =string                    
  }))
}