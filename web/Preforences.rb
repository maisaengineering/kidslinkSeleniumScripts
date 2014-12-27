require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "ios2@test.com"

#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"

#Clicking on the Submit Button
sleep(5)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click

#Click on Preferences
driver.find_element(:link, "Preferences").click

/#CurrentPassword enter
sleep(5)
#driver.find_element(:id, "user_current_password").clear
CurrentPasswordId = driver.find_element(:id, "user_current_password")
CurrentPasswordId.send_keys "123456"

#NewPassword enter
sleep(5)
NewPasswordId = driver.find_element(:id, "user_password")
NewPasswordId.send_keys "111111"

#AgainNewPassword enter
AgainNewPasswordId = driver.find_element(:id, "user_password_confirmation")
AgainNewPasswordId.send_keys "111111"

#Milestone sharing
sleep(5)
chkbox = driver.find_element(:name, "hospital_opt_out")
MilestoneId = driver.find_element(:id, "hospital_opt_out")
MilestoneId.click

#Notification email
sleep(5)
chkbox = driver.find_element(:name, "ae_notification_opt_out")
NotificationId = driver.find_element(:id, "ae_notification_opt_out")
NotificationId.click/

#Add new child and preferred name
sleep(5)
preferredId = driver.find_element(:id, "user_kid_nickname")
preferredId.send_keys "cute baby"

#Kid Fname
#sleep(5)
FnameId = driver.find_element(:id, "user_kid_fname")
FnameId.send_keys "sravasthik"

#Kid Lname
#sleep(5)
LnameId = driver.find_element(:id, "user_kid_lname")
LnameId.send_keys "reddy"

#Kidbirth date
#sleep(5)
KbirthId = driver.find_element(:id, "user_kid_birthdate")
KbirthId.send_keys "11/11/2011"

#Kid gender selection
sleep(5)
select = driver.find_element(:name, "user[kid][gender]")
KgenderId = driver.find_element(:id, "user_kid_gender")
KgenderId.send_keys "Girl"

#Save profile
sleep(10)
driver.find_element(:class, "saveButton").click

















