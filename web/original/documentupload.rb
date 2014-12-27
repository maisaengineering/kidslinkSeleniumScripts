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
driver.find_element(:link, "Quick Capture").click
#######upload the document
									#Mozilla - File Upload
									#Chrome - Open
									#and for IE - Choose File to Upload

 
/#driver = webdriver.Firefox()
element = driver.find_element_by_id("File Upload")
element.send_keys("D:\sravan\sravan\img\cute-boy12.jpg")/







 									
sleep(5)
WinWaitActive("File Upload")
sleep(5)

 Send("D:\sravan\sravan\img\cute-boy12.jpg").click
 sleep(5)
 Send("{ENTER}")
 



