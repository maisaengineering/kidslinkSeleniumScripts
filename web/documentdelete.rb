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

#########################################		 Delete document
sleep(5)
driver.find_element(:link, "Delete document").click

########################################		  Click on OK button
			#sleep(5)
			#driver.switch_to.alert.accept

#########################################        click on cancel button
			sleep(10)
			driver.switch_to.alert.dismiss

 
 
 
 
 
 
 
 
 
 
 
 
 
 

/#####33details

sleep(5)
cmpnyId = driver.find_element(:id, "document_org_provider").clear
cmpnyId = driver.find_element(:id, "document_org_provider")
cmpnyId.send_keys "maisa solutions"

sleep(5)
descrnId = driver.find_element(:id, "document_description")
descrnId.send_keys "maisa solutions is located in hyderabad"/


















