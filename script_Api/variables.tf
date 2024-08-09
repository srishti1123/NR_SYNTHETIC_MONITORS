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