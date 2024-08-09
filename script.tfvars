

script ={
    "script-1"={
  status           = "ENABLED"
  name             ="script_monitor"
  type             ="SCRIPT_BROWSER"
  locations_public =["AP_SOUTH_1", "AP_EAST_1"]
  period           ="EVERY_DAY"
enable_screenshot_on_failure_and_script = true
 file_path ="login_test.js"
    }
}