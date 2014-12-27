require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox
driver.manage().window().maximize()
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
#*******************************************************************#
########################## ChildPhotograph ##########################
#*******************************************************************#
sleep(5)
kidprofileId = driver.find_element(:id, "childPhotograph")
kidprofileId.click
#*********************** Click on milestone ************************#
sleep(10)
driver.find_element(:xpath, "//div[contains(@class, 'milestonePromptBox recommendedMilestoneBar')]").click
#*********************** 
sleep(5)
driver.find_element(:link, "Select photo").click








