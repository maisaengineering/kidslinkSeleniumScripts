require "selenium-webdriver"
#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox
driver.manage().window().maximize()
#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

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

#*******************************************************************#
########################## Add milestone ############################
#*******************************************************************#
sleep(10)
puts "Add milestone..."
kidprfileId = driver.find_element(:id, "childPhotograph")
kidprfileId.click
 
sleep(10)
puts "Click on milestone"
driver.find_element(:xpath, "//div[contains(@class, 'milestonePromptBox recommendedMilestoneBar')]").click

#************************ Switch Milestone *************************#
sleep(5)
driver.find_element(:link, "Switch Milestone").click

#********************** Select Photo frame  ************************#
sleep(5)
driver.find_element(:xpath, "//div[contains(@class, 'milestonesFeatureEntry')]").click

#************************ Switch Milestone *************************#
sleep(5)
driver.find_element(:link, "Switch Milestone").click

#***************** Add browse ideas in milestone *******************#
sleep(5)
driver.find_element(:link, "browse ideas").click

#******************* Select a milestone to add *********************#
sleep(5)
driver.find_element(:link, "1st Thanksgiving").click

#*********************** Add date in milestone *********************#
sleep(5)
driver.find_element(:id, "milestone_milestone_date").clear
s = driver.find_element(:id, "milestone_milestone_date")
s.send_keys "12/27/2013"

#*********************** Add text in milestone *********************#
driver.find_element(:id, "milestone_additional_text").clear
s = driver.find_element(:id, "milestone_additional_text")
s.send_keys "Automation Testing"

#******************** Add text in Journal entry  *******************#
puts "Add text in Journal entry..."
driver.find_element(:id, "milestone_journal_entry").clear
st = driver.find_element(:id, "milestone_journal_entry")
st.send_keys "Sachin Tendulkar (born 24 April 1973) is a former Indian cricketer widely acknowledged as one of the greatest cricketers of all time"

sleep(2)
puts "Select photos in your system..."
driver.find_element(:link, "Select photo").click

#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/automation_master_copy/web/Original/Upload/milestone.exe")
puts f.readlines
sleep(10)
driver.find_element(:link, "Save milestone").click

#*********************** View and Edit milestone *******************#
sleep(30)
puts "Edit milestone..."
driver.find_element(:class, "mstWrapper_1stthanksgiving_1").click
#************************ Switch Milestone *************************#
sleep(10)
driver.find_element(:link, "Switch Milestone").click

#********************** Select Photo frame  ************************#
sleep(10)
driver.find_element(:xpath, "//div[contains(@class, 'milestonesFeatureEntry')]").click

#************************ Switch Milestone *************************#
sleep(10)
driver.find_element(:link, "Switch Milestone").click

#***************** Add browse ideas in milestone *******************#
sleep(10)
driver.find_element(:link, "browse ideas").click

#******************* Select a milestone to add *********************#
sleep(15)
driver.find_element(:link, "1st day of school").click

#*********************** Add date in milestone *********************#
sleep(10)
driver.find_element(:id, "milestone_milestone_date").clear
s = driver.find_element(:id, "milestone_milestone_date")
s.send_keys "12/27/2014"

#*********************** Add text in milestone *********************#
driver.find_element(:id, "milestone_additional_text").clear
s = driver.find_element(:id, "milestone_additional_text")
s.send_keys "Edit milestone ............"

#******************** Add text in Journal entry  *******************#
puts "Add text in Journal entry"
driver.find_element(:id, "milestone_journal_entry").clear
st = driver.find_element(:id, "milestone_journal_entry")
st.send_keys " He took up cricket at the age of eleven, made his Test debut against Pakistan at the age of sixteen"
sleep(2)
puts "Select photos in your system..."
driver.find_element(:link, "Select photo").click

#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/automation_master_copy/web/Original/Upload/editmilestone.exe")
puts f.readlines
sleep(10)
driver.find_element(:link, "Save milestone").click
#*********************** delete milestone **************************#
sleep(25)
puts "delete milestone..."
driver.find_element(:class, "mstWrapper_1stdayofschool_1").click

#*********************** select delete option *********************#                                
sleep(10)
driver.find_element(:link, "Delete Milestone").click





