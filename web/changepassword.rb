require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"
driver.manage().window().maximize()

#Typing the UserName
driver.find_element(:id, "user_email").send_keys "qasravan547+a11@gmail.com"

#Typing the Email-Id
driver.find_element(:id, "user_password").send_keys "123456"

#Submit Button
driver.find_element(:name, "commit").click
#************** Enter wrong details current and new password ***************#
sleep 5.0
driver.find_element(:link, "Preferences").click
puts "Enter wrong details current and new password..."
sleep 5.0
driver.find_element(:id, "user_current_password").send_keys "123457"
sleep 0.5
driver.find_element(:id, "user_password").send_keys "654322"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").send_keys "654321"
sleep(5)
driver.find_element(:class, "saveButton").click

#******************* New password fields did not match *********************#
puts "New password fields did not match..."
sleep 5.0
driver.find_element(:id, "user_current_password").clear
driver.find_element(:id, "user_current_password").send_keys "123456"
sleep(5)
driver.find_element(:class, "saveButton").click

#*********************** Enter all currect details *************************#
puts "Enter all currect details..."
sleep 5.0
driver.find_element(:id, "user_password").clear
driver.find_element(:id, "user_password").send_keys "654321"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").clear
driver.find_element(:id, "user_password_confirmation").send_keys "654321"
sleep(5)
driver.find_element(:class, "saveButton").click

#*********************** 2nd time change password ************************#
puts "2nd time changed password..."
sleep 5.0
driver.find_element(:link, "Preferences").click
sleep 0.5
driver.find_element(:id, "user_current_password").send_keys "654321"
sleep 0.5
driver.find_element(:id, "user_password").send_keys "123456"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").send_keys "123456"
sleep(5)
driver.find_element(:class, "saveButton").click

/sleep(5)
driver.find_element(:link, "Log Out").click/













