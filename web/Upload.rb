require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "https://kl-json.herokuapp.com"
driver.manage().window().maximize()
#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "singireddy447+w10@gmail.com"
#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"
#Clicking on the Submit Button
sleep(5)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click

sleep(5)
driver.find_element(:id, "childPhotograph").click
sleep(5)
driver.find_element(:link, "change ID photo").click

f = IO.popen("D:/automation_master_copy/web/Original/Upload/childphoto.exe")
puts f.readlines 

sleep(10)
driver.find_element(:link, "change ID photo").click
