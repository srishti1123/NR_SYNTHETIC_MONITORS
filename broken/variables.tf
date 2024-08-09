variable "broken" {
  type=map(object({
  name                 =string                 //"Sample Broken Links Monitor"
  uri                  =string                  //"https://www.one.example.com"
  locations_public     =  list(string)           //        ["AP_SOUTH_1"]
  period               =  string               //"EVERY_6_HOURS"
  status               =   string          //      "ENABLED"
  runtime_type        =     string            //   "NODE_API"
  runtime_type_version =       string              //  "16.10"
  }))
}