var assert = require('assert');

$browser.get("https://login.newrelic.com/login").then(function(){

    return $browser.findElement($driver.By.id("login_email")).sendKeys("readonly@newrelicuniversity.com");

}).then(function(){

  return $browser.findElement($driver.By.id("login_submit")).click();

}) .then(function(){

//Find the password field by specifying its name, then submits a secured password.

    return $browser.findElement($driver.By.id("login_password")).sendKeys("o11y-as-code");

}).then(function(){

//Find and click the login button.

    return $browser.findElement($driver.By.id("login_submit")).click();

});
 