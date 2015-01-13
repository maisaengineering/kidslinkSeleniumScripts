require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"
driver.manage().window().maximize()
#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "sas2@test.com"

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

sleep(5)
driver.find_element(:link, "Health").click

sleep(5)
driver.find_element(:link, "Allergy details").click

#******************************** Document edit ****************************#
sleep(10)
puts "Edit document details..."
driver.find_element(:link, "Edit").click
										 
sleep(5)
driver.find_element(:xpath, "(//input[@id='document_org_provider'])[2]").clear
Edit = driver.find_element(:xpath, "(//input[@id='document_org_provider'])[2]")
Edit.send_keys "In 2002  Almanack ranked him the second greatest Test batsman of all time"
									 
driver.find_element(:xpath, "(//input[@id='document_description'])[2]").clear
Editdescription = driver.find_element(:xpath, "(//input[@id='document_description'])[2]")
Editdescription.send_keys "Tendulkar received the Arjuna Award in 1994 for his outstanding sporting achievement"

driver.find_element(:id, "document_edit_taken_on").clear
dateId = driver.find_element(:id, "document_edit_taken_on")
dateId.send_keys "01/01/2015"

driver.find_element(:id, "document_edit_expire_on").clear
dateEId = driver.find_element(:id, "document_edit_expire_on")
dateEId.send_keys "01/01/2016"
# Save
sleep(3)
driver.find_element(:link, "Save document").click





