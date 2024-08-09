module "broken" {
  source ="./broken"
   broken = var.broken
}
module "simple_browser" {
  source="./simple_browser"
  simple_browser = var.simple_browser
}
module "script" {
  source="./script_browser"
  script = var.script
}
module "step_monitor" {
    source ="./step"
    step_monitors = var.step_monitors
}
module "ping" {
  source="./ping"
  ping = var.ping
}
module "script_api" {
  source = "./script_Api"
  script-api = var.script-api
}