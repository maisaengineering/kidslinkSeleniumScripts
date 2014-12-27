require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox


#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

##################################################################################################                  Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "ios5@test.com"

#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"

#Clicking on the Submit Button
sleep(2)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click
#
sleep(2)
driver.find_element(:link, "view all").click
#Click on (Capture new document)
sleep(5)
driver.find_element(:class, "clickLink").click
#profile selection
sleep(2)
driver.find_element(:class, "capture_profile_id").click	
#	captureCategory selection    Household
sleep(2)		
driver.find_element(:id, "captureCategory-5217606a59a2a5065e000003").click
#Contract			
sleep(2)
driver.find_element(:id, "5217606b59a2a5065e000059").click
##############################   Change the series of id below(EX:5a,5b,5c,5d) Sub document
sleep(2)
driver.find_element(:id, "5217606b59a2a5065e00005c").click


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

sleep(2)
driver.find_element(:class, "taken_on").clear
driver.find_element(:class, "taken_on").send_keys "12/19/2005"
####### DOCUMENT EXPIRATON DATE CHANGE MANUALLY.
sleep(2)
driver.find_element(:class, "expiration_date").clear
driver.find_element(:class, "expiration_date").send_keys "12/20/2014"	
					
###	 document save				
driver.find_element(:link, "Save document").click	
###  Cancel
#driver.find_element(:link, "Cancel").click	

#########################################################################        View document
sleep(10)
driver.find_element(:link, "Contract").click
sleep(5)
driver.find_element(:link, "Household help contract").click
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
#########################################       select new document type(Health)											
												sleep(2)		
												driver.find_element(:id, "captureCategory-5217606a59a2a5065e000002").click
#########################################		Select sub document
												sleep(5)
												driver.find_element(:id, "5217606b59a2a5065e000046").click
#########################################		Select sub document	......											 
												sleep(5)
												driver.find_element(:id, "5217606b59a2a5065e000048").click
												
												
												 
/#########################################		 Delete document     #########################################
			sleep(5)
			driver.find_element(:link, "Delete document").click
########################################		  Click on OK button document will be deleted...
			#sleep(5)
			#driver.switch_to.alert.accept
#########################################        click on cancel button
			sleep(10)
			driver.switch_to.alert.dismiss/

 
 
 


 