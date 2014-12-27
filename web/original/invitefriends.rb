require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "ios15@test.com"

#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"

#Clicking on the Submit Button
sleep(5)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click

#Click invitation link
sleep(10)
inviteId = driver.find_element(:link, "invite a friend to try KidsLink")
inviteId.click
#
sleep(5)
IEmailId = driver.find_element(:id, "email")
IEmailId.send_keys "ios16@gmail.com"
#
sleep(5)
invitId = driver.find_element(:link, "Invite")
invitId.click
/#
sleep(5)
cancelId = driver.find_element(:link, "Cancel")
cancelId.click/



