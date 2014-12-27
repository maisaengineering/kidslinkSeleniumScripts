require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"


#Typing the UserName
LoginButton = driver.find_element(:id, "user_email")
LoginButton.send_keys "ios1@test.com"

#Typing the Email-Id
EmailId = driver.find_element(:id, "user_password")
EmailId.send_keys "123456"

#Clicking on the Submit Button
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click
sleep(5)
driver.find_element(:link, "Log Out").click













