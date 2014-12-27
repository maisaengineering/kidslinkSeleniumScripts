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
#
sleep(5)
driver.find_element(:link, "Household").click
#
sleep(5)
driver.find_element(:link, "Contract").click
#
sleep(5)
driver.find_element(:link, "Household help contract").click
#
########### Document created date enter below link and It will run only more than 1 documents in same category.Otherwise put comment in below link(First Doc).
sleep(5)
driver.find_element(:link, "12/19/2005").click
#########################################        Document view  
												 sleep(5)
												 driver.find_element(:link, "View").click

#########################################		 Document edit..........
												 sleep(5)
												 driver.find_element(:link, "Edit").click
#########################################		 Change document type.........								
												sleep(5)
												driver.find_element(:link, "change type").click
#########################################       select document type->household sub category    											
												sleep(10)		
												driver.find_element(:id, "5217606b59a2a5065e00005e").click
																							
#########################################		 Delete document     #########################################
			sleep(5)
			driver.find_element(:link, "Delete document").click
########################################		  Click on OK button document will be deleted...
			#sleep(5)
			#driver.switch_to.alert.accept
#########################################        click on cancel button
			sleep(10)
			driver.switch_to.alert.dismiss
#################################################################    SAVE DOCUMENT
													sleep(5)
													driver.find_element(:link, "Save document").click
 
 #Click on childPhotograph
sleep(10)
kidprofileId = driver.find_element(:id, "childPhotograph")
kidprofileId.click
 
 
 driver.find_element(:id, 'TextArea').send_keys [:contol, 'a'], :backspace
driver.find_element(:id, 'TextArea').send_keys 'InputText'


 
 
 
 
















