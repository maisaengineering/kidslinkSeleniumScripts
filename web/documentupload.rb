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
sleep(2)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click
#
sleep(5)
driver.find_element(:link, "view all").click
#
sleep(5)
driver.find_element(:link, "Quick Capture").click


/########################################################### Multiple file upload  ###  PLEASE ENTER LINK MANUALLY      D:\images\sra.jpg
sleep(25)
fileId = driver.find_element(:id, "accept_and_capture")
fileId = driver.find_element(:link, "Accept and capture page 2").click/

########################################################### Single file upload   ###   PLEASE ENTER LINK MANUALLY      D:\images\sra.jpg
sleep(25)
driver.find_element(:id, "accept_and_capture")
driver.find_element(:link, "Accept and save").click



#Company name
cmpnyId = driver.find_element(:id, "org_provider")
cmpnyId.send_keys "Located in hyderabad"
#Description			
descriptionId = driver.find_element(:id, "description")
descriptionId.send_keys "Good One"

sleep(5)

driver.find_element(:class, "taken_on").clear
driver.find_element(:class, "taken_on").send_keys "12/19/2005"

####### DOCUMENT EXPIRATON DATE CHANGE MANUALLY.
sleep(5)
driver.find_element(:class, "expiration_date").clear
driver.find_element(:class, "expiration_date").send_keys "12/18/2014"	
					
###	 document save				
driver.find_element(:link, "Save document").click	
###  Cancel
#driver.find_element(:link, "Cancel").click	
			
						
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							