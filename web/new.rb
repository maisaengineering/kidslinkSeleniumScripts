require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "sas1@test.com"

#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"

#Clicking on the Submit Button
sleep(5)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click
#
sleep(5)
driver.find_element(:link, "view all").click
#
sleep(5)
driver.find_element(:link, "Health").click
#
sleep(5)
driver.find_element(:link, "Allergy details").click
#
sleep(5)
#########################################        document view  
												 #driver.find_element(:link, "View").click

#########################################		 document edit..........
driver.find_element(:link, "Edit").click

sleep(5)
PassId = driver.find_element(:class, "popUpPanel")
PassId = driver.find_element(:id, "document_org_provider")
PassId.send_keys "123456"
















