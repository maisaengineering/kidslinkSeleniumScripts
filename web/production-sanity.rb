require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox
#Loading the assertselenium URL
driver.navigate.to "https://me.mykidslink.com"
#driver.navigate.to "https://kl-json.herokuapp.com"

driver.manage().window().maximize()

#Typing the UserName
driver.find_element(:id, "user_email").send_keys "singireddy447@gmail.com"

#Typing the Email-Id
driver.find_element(:id, "user_password").send_keys "123456"

#Clicking on the Submit Button
sleep(5)
driver.find_element(:name, "commit").click

#*******************************************************************#
################ Add new child and preferred name ###################
#*******************************************************************#    
puts "Add new child..."
sleep(10)
driver.find_element(:link, "Preferences").click
sleep(10)
preferredId = driver.find_element(:id, "user_kid_nickname")
preferredId.send_keys "cute baby"

#Kid Fname
#sleep(5)
FnameId = driver.find_element(:id, "user_kid_fname")
FnameId.send_keys "sravasthik"

#Kid Lname
#sleep(5)
LnameId = driver.find_element(:id, "user_kid_lname")
LnameId.send_keys "reddy"

#Kidbirth date
#sleep(5)
KidbirthId = driver.find_element(:id, "user_kid_birthdate")
KidbirthId.send_keys "11/11/2011"

#Kid gender selection
sleep(5)
select = driver.find_element(:name, "user[kid][gender]")
KgenderId = driver.find_element(:id, "user_kid_gender")
KgenderId.send_keys "Girl"

#Save profile
sleep(10)
driver.find_element(:class, "saveButton").click
#*******************************************************************#
################### Click invitation link ###########################
#*******************************************************************#    
sleep(10)
puts "invite a friend to try KidsLink..."
inviteId = driver.find_element(:link, "invite a friend to try KidsLink")
inviteId.click
#Invitee email
sleep(5)
IEmailId = driver.find_element(:id, "email")
IEmailId.send_keys "ios16@gmail.com"
=begin
#
sleep(5)
invitId = driver.find_element(:link, "Invite")
invitId.click
=end
#
sleep(5)
cancelId = driver.find_element(:link, "Cancel")
cancelId.click

#*******************************************************************#
########################## Add Document #############################
#*******************************************************************#    
sleep(10)
puts "Add Document..."
driver.find_element(:link, "view all").click
#Click on (Capture new document)
sleep(10)
driver.find_element(:xpath, "//a[contains(@href, '#')]").click
sleep 5.0
driver.find_element(:xpath, "(//a[contains(@href, '#')])[18]").click
sleep 5.0
driver.find_element(:xpath, "(//a[contains(text(),'Household')])[2]").click
sleep 10.0 
driver.find_element(:xpath, "//a[contains(text(),'Contract  »')]").click
sleep 5.0
driver.find_element(:xpath, "(//a[contains(text(),'Contract')])[3]").click
puts "Upload Document..."
#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/a/web/U/document.exe")
puts f.readlines

/#Multiple document upload at a time 
sleep(10)
fileId = driver.find_element(:id, "accept_and_capture")
fileId = driver.find_element(:link, "Accept and capture page 2").click/
#f = IO.popen("D:/a/web/U/document.exe")
#puts f.readlines

sleep(10)
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
#
sleep(2)
driver.find_element(:class, "expiration_date").clear
driver.find_element(:class, "expiration_date").send_keys "12/20/2014"	
					
###	 document save				
driver.find_element(:link, "Save document").click	
###  Cancel
#driver.find_element(:link, "Cancel").click	

#*******************************************************************#
########################## View Document ############################
#*******************************************************************# 
sleep(20)
puts "View document..."
driver.find_element(:link, "Contract").click
sleep(10)
driver.find_element(:xpath, "(//a[contains(text(),'Contract')])[2]").click

#******* If we have more than one document in same category remove the below comment **************#
#***** If U don't have document created date mentioned -Then give current date in below link ******#
sleep(15)
driver.find_element(:link, "12/19/2005").click

sleep(10)
driver.find_element(:link, "View").click

#*******************************************************************#
########################## Change document type #####################
#*******************************************************************# 
sleep(10)
puts "Change document type..."
driver.find_element(:link, "Edit").click

sleep(10)
driver.find_element(:link, "change type").click
#driver.find_element(:xpath, "(//a[contains(@href, '#')])[40]").click

#*********** Household(Contract) TO Health(Allergy details) *********#  	
sleep(10)
driver.find_element(:xpath, "(//a[contains(text(),'Health')])[3]").click
sleep(15)		
driver.find_element(:xpath, "(//a[contains(text(),'Allergy details')])").click	
#**************************** SAVE DOCUMENT ************************#
sleep(5)
driver.find_element(:link, "Save document").click

#*******************************************************************#
########################## Edit Document ############################
#*******************************************************************#
sleep(8)
puts "Edit document details..."
driver.find_element(:link, "Health").click
sleep(8)
driver.find_element(:link, "Allergy details").click

#******* If we have more than one document in same category remove the below comment **************#
#***** If U don't have document created date mentioned -Then give current date in below link ******#
#sleep(5)
#driver.find_element(:link, "12/19/2005").click

sleep(7)
driver.find_element(:link, "Edit").click
#*********************** Enter ORG details *************************#										 
sleep(6)
driver.find_element(:xpath, "(//input[@id='document_org_provider'])[2]").clear
Edit = driver.find_element(:xpath, "(//input[@id='document_org_provider'])[2]")
Edit.send_keys "In 2002  Almanack ranked him the second greatest Test batsman of all time"
#*********************** Enter description details *************************#											 
driver.find_element(:xpath, "(//input[@id='document_description'])[2]").clear
Editdescription = driver.find_element(:xpath, "(//input[@id='document_description'])[2]")
Editdescription.send_keys "Tendulkar received the Arjuna Award in 1994 for his outstanding sporting achievement"
#Date
driver.find_element(:id, "document_edit_taken_on").clear
dateId = driver.find_element(:id, "document_edit_taken_on")
dateId.send_keys "01/01/2015"
#Expire date
driver.find_element(:id, "document_edit_expire_on").clear
dateEId = driver.find_element(:id, "document_edit_expire_on")
dateEId.send_keys "01/01/2016"
# Save
sleep(3)
driver.find_element(:link, "Save document").click

#*******************************************************************#
########################## Delete document ##########################
#*******************************************************************# 
sleep(7)
puts "Delete document..."
driver.find_element(:link, "Health").click
sleep(8)
driver.find_element(:link, "Allergy details").click

#************* If we have more than one document in same category remove the below comment **************#
#If we don't have document created date mentioned above created date-Then give current date in below link#
#sleep(10)
#driver.find_element(:link, "01/01/2015").click
sleep(10)
driver.find_element(:link, "Edit").click
sleep(10)
driver.find_element(:xpath, "//a[contains(text(),'Delete document')]").click
sleep(5)
driver.switch_to.alert.accept

#*******************************************************************#
######################### Child edit details ########################
#*******************************************************************#
sleep(10)
kidprofileId = driver.find_element(:id, "childPhotograph")
kidprofileId.click
#************************ Child profile edit button ****************#
sleep(10)
puts "Child edit profile details"


driver.find_element(:xpath, "(//a[contains(@href, '#')])[4]").click
#Typing the first name
sleep(10)
driver.find_element(:xpath, "//input[@id='kid_fname']").clear
FKnameId = driver.find_element(:xpath, "//input[@id='kid_fname']")
FKnameId.send_keys "SingiReddy"

#Typing the middle name
#sleep(5)
driver.find_element(:id, "kid_mname").clear
MnameId = driver.find_element(:id, "kid_mname")
MnameId.send_keys "Sravan"

#Typing the Lname
driver.find_element(:id, "kid_lname").clear
KnameId = driver.find_element(:id, "kid_lname")
KnameId.send_keys "Kumar"

#Typing the Preforedred name
#sleep(5)
driver.find_element(:id, "kid_nickname").clear
NnameId = driver.find_element(:id, "kid_nickname")
NnameId.send_keys "SravanReddy"

#Enter Birth date
#sleep(10)
driver.find_element(:id, "kid_birthdate").clear
BirthId = driver.find_element(:id, "kid_birthdate")
BirthId.send_keys "12/19/2000"

#Kid gender
#sleep(10)
gender_select = driver.find_element(:name, "kid[gender]")
GenderId = driver.find_element(:id, "kid_gender")
GenderId.send_keys "Boy"

#Address1
#sleep(5)
driver.find_element(:id, "address_address1").clear
Address1Id = driver.find_element(:id, "address_address1")
Address1Id.send_keys "mondal:Siricilla,H-no:1-11/1"

#Address2
driver.find_element(:id, "address_address2").clear
Address2Id = driver.find_element(:id, "address_address2")
Address2Id.send_keys "Dist:karimnagar"

#Address city
driver.find_element(:id, "address_city").clear
AddresscityId = driver.find_element(:id, "address_city")
AddresscityId.send_keys "sircilla"

#Address state
#driver.find_element(:id, "address_state").clear
state_select = driver.find_element(:name, "address[state]")
stateId = driver.find_element(:id, "address_state")
stateId.send_keys "TN"

#Address Zipcode
driver.find_element(:id, "address_zipcode").clear
AddresszipId = driver.find_element(:id, "address_zipcode")
AddresszipId.send_keys "505301"

#Address kid_other_basic_details
driver.find_element(:id, "kid_other_basic_details").clear
BasicId = driver.find_element(:id, "kid_other_basic_details")
BasicId.send_keys "Very cute"

#Doctor name
driver.find_element(:id, "kid_doctor_name").clear
DoctorId = driver.find_element(:id, "kid_doctor_name")
DoctorId.send_keys "maisa"

#doctor phone
driver.find_element(:id, "kid_doctor_phone").clear
DoctorPId = driver.find_element(:id, "kid_doctor_phone")
DoctorPId.send_keys "09090000990009"

#doctor email
driver.find_element(:id, "kid_doctor_email").clear
DoctorEId = driver.find_element(:id, "kid_doctor_email")
DoctorEId.send_keys "maisa@gamil.com"

#dentist name
driver.find_element(:id, "kid_dentist_name").clear
DentistId = driver.find_element(:id, "kid_dentist_name")
DentistId.send_keys "pride"

#dentist phone
driver.find_element(:id, "kid_dentist_phone").clear
DentistPId = driver.find_element(:id, "kid_dentist_phone")
DentistPId.send_keys "088888888888"

#dentist Email
driver.find_element(:id, "kid_dentist_email").clear
DentistEId = driver.find_element(:id, "kid_dentist_email")
DentistEId.send_keys "pride@gamil.com"

#kid medicines
driver.find_element(:id, "kid_medicines").clear
MedicinesId = driver.find_element(:id, "kid_medicines")
MedicinesId.send_keys "kfdfkgd fdgnjfdn dfgndfjgdn gnfdkj jfdgdfg dgjd fgmdgj dfgd j"

#food_allergies
driver.find_element(:id, "kid_food_allergies").clear
allergiesId = driver.find_element(:id, "kid_food_allergies")
allergiesId.send_keys "sdjkfsdhf sdjfsd fsd  fsdfbs fs fs fsddf fddfn sfs f"

#kid_medical_issues
driver.find_element(:id, "kid_medical_issues").clear
medicalId = driver.find_element(:id, "kid_medical_issues")
medicalId.send_keys "sdjkfsdhf sdjfsd fsd  fsdfbs fs fs fcbfdv fdgfcvcdfdx  f fdfsddf fddfn sfs f"

#kid_special_needs
driver.find_element(:id, "kid_special_needs").clear
specialId = driver.find_element(:id, "kid_special_needs")
specialId.send_keys "sdjkfsdhf sdjfsd fsd  fsdfbs fs fs bbbbb b bbb b bb fsddf fddfn sfs f"

#kid_other_concerns
driver.find_element(:id, "kid_other_concerns").clear
concernsId = driver.find_element(:id, "kid_other_concerns")
concernsId.send_keys "sdjkfsdhf sdjfsd fsd  fsdfbs fs fs xvxbvxvbxbvxbvxbvbxbvxbvx xvbxcbvbxbvxbvx xcv xc v xv x vxvxvxcvxcvx fsddf fddfn sfs f"

#*******************************************************************#
######################## Parent Relationship #########################
#*******************************************************************#
sleep(5)
relation_select = driver.find_element(:name, "parents[0][profiles_manageds][child_relationship]")
parent1Id = driver.find_element(:id, "parents_0_profiles_manageds_child_relationship")
parent1Id.send_keys "Mother"

#parent Fname
driver.find_element(:id, "parents_0_info_fname").clear
P1FnameId = driver.find_element(:id, "parents_0_info_fname")
P1FnameId.send_keys "RAM"

#parent Mname
driver.find_element(:id, "parents_0_info_mname").clear
P1MnameId = driver.find_element(:id, "parents_0_info_mname")
P1MnameId.send_keys "kumar"

#Parent Lname
#sleep(5)
driver.find_element(:id, "parents_0_info_lname").clear
P1LnameId = driver.find_element(:id, "parents_0_info_lname")
P1LnameId.send_keys "reddy"

#parent phone number
driver.find_element(:id, "parents_0_info_phone_numbers_0_contact").clear
P1Phone1Id = driver.find_element(:id, "parents_0_info_phone_numbers_0_contact")
P1Phone1Id.send_keys "555555555555555555"

#parent phone no.type
#sleep(10)
P1Phonetype1_select = driver.find_element(:name, "parents[0][info][phone_numbers][0][type]")
P1ph1Id = driver.find_element(:id, "parents_0_info_phone_numbers_0_type")
P1ph1Id.send_keys "Mobile"

#parent phone2
driver.find_element(:id, "parents_0_info_phone_numbers_1_contact").clear
P1Phone2Id = driver.find_element(:id, "parents_0_info_phone_numbers_1_contact")
P1Phone2Id.send_keys "66666666666666666"
#parent phone no.type2
P1Phonetype2_select = driver.find_element(:name, "parents[0][info][phone_numbers][1][type]")
P1ph2Id = driver.find_element(:id, "parents_0_info_phone_numbers_1_type")
P1ph2Id.send_keys "Home"
#parent phone3
driver.find_element(:id, "parents_0_info_phone_numbers_2_contact").clear
P1Phone3Id = driver.find_element(:id, "parents_0_info_phone_numbers_2_contact")
P1Phone3Id.send_keys "7777777777777"
#parent phone no.type2
P1Phonetype3_select = driver.find_element(:name, "parents[0][info][phone_numbers][2][type]")
P1ph3Id = driver.find_element(:id, "parents_0_info_phone_numbers_2_type")
P1ph3Id.send_keys "Work"
#***********************  Save profile  **********************#
sleep(5)
puts "Save profile...."
driver.find_element(:link, "Save profile").click
#************************  Cancel  ***************************#
#sleep(5)
#driver.find_element(:link, "Cancel").click

=begin
#*********************  Adding new parent  *******************#
#sleep(5)
#driver.find_element(:link, "add new parent/guardian").click

#*******************************************************************#
################### Parent2 Relationship(Optional) ###################
#*******************************************************************#

sleep(5)
Puts "Parent2 relationship...."
relation2_select = driver.find_element(:name, "parents[1][profiles_manageds][child_relationship]")
parent2Id = driver.find_element(:id, "parents_1_profiles_manageds_child_relationship")
parent2Id.send_keys "Mother"

#Check box
sleep(5)
chkbox = driver.find_element(:name, "parents[1][profiles_manageds][manageable]")
parent2Id = driver.find_element(:id, "parents_1_profiles_manageds_manageable")
parent2Id.click

#parent2 Fname
driver.find_element(:id, "parents_1_info_fname").clear
P2FnameId = driver.find_element(:id, "parents_1_info_fname")
P2FnameId.send_keys "RAM"

#parent2 Mname
driver.find_element(:id, "parents_1_info_mname").clear
P2MnameId = driver.find_element(:id, "parents_1_info_mname")
P2MnameId.send_keys "kumar"

#Parent2 Lname
#sleep(5)
driver.find_element(:id, "parents_1_info_lname").clear
P2LnameId = driver.find_element(:id, "parents_1_info_lname")
P2LnameId.send_keys "reddy"

#parent2 phone number
driver.find_element(:id, "parents_1_info_phone_numbers_0_contact").clear
P2PhoneId = driver.find_element(:id, "parents_1_info_phone_numbers_0_contact")
P2PhoneId.send_keys "555555555555555555"

#parent2 phone no.type
#sleep(10)
Phonetype2_select = driver.find_element(:name, "parents[1][info][phone_numbers][0][type]")
P2phId = driver.find_element(:id, "parents_1_info_phone_numbers_0_type")
P2phId.send_keys "Mobile"

#parent2 phone2
driver.find_element(:id, "parents_1_info_phone_numbers_1_contact").clear
P2Phone2Id = driver.find_element(:id, "parents_1_info_phone_numbers_1_contact")
P2Phone2Id.send_keys "66666666666666666"

#parent2 phone no.type2
#sleep(10)
Phone2type2_select = driver.find_element(:name, "parents[1][info][phone_numbers][1][type]")
P2ph2Id = driver.find_element(:id, "parents_1_info_phone_numbers_1_type")
P2ph2Id.send_keys "Home"

#parent2 phone3
driver.find_element(:id, "parents_1_info_phone_numbers_2_contact").clear
P2Phone3Id = driver.find_element(:id, "parents_1_info_phone_numbers_2_contact")
P2Phone3Id.send_keys "7777777777777"

#parent2 phone no.type2
#sleep(10)
Phone2type3_select = driver.find_element(:name, "parents[1][info][phone_numbers][2][type]")
P2ph3Id = driver.find_element(:id, "parents_1_info_phone_numbers_2_type")
P2ph3Id.send_keys "Work"

#parent2 email id.
driver.find_element(:id, "parents_1_info_email").clear
P2email2Id = driver.find_element(:id, "parents_1_info_email")
P2email2Id.send_keys "ios333@test.com"/

#Save profile
#sleep(5)
#driver.find_element(:link, "Save profile").click

#Cancel details
#sleep(5)
#driver.find_element(:link, "Cancel").click

#Adding new parent
#sleep(5)
#driver.find_element(:link, "add new parent/guardian").click
=end

#*******************************************************************#
########################## Change ID photo ##########################
#*******************************************************************#
sleep(7)
puts "Select photo..."
driver.find_element(:link, "change ID photo").click

#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/a/web/U/childphoto.exe")
puts f.readlines
sleep(10)
driver.find_element(:xpath, "//span[contains(@id, 'klLogo')]").click
sleep(10)
driver.find_element(:id, "childPhotograph").click
 
#*******************************************************************#
########################## Add milestone ############################
#*******************************************************************#
sleep(20)
puts "Click on milestone"
driver.find_element(:xpath, "//div[contains(@class, 'milestonePromptBox recommendedMilestoneBar')]").click

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
sleep(10)
driver.find_element(:link, "1st Thanksgiving").click

#*********************** Add date in milestone *********************#
sleep(10)
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

sleep(5)
puts "Select photos in your system..."
driver.find_element(:link, "Select photo").click

#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/a/web/U/milestone.exe")
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
sleep(5)
puts "Select photos in your system..."
driver.find_element(:link, "Select photo").click

#**************** Set the path using software AutoIt and SciTE script editor ****************#
f = IO.popen("D:/a/web/U/editmilestone.exe")
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

############################################################################# 
#**************************** Change Password ******************************#
#############################################################################
puts "Change Password...."
#************ Enter wrong details in current and new password **************#
sleep(10)
driver.find_element(:link, "Preferences").click
puts "Enter wrong password details ..."
sleep(10)
driver.find_element(:id, "user_current_password").send_keys "123457"
sleep 0.5
driver.find_element(:id, "user_password").send_keys "654322"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").send_keys "654321"
sleep(5)
driver.find_element(:class, "saveButton").click

#********************** New password fields did not match *********************#
puts "Enter wrong details new password fields..."
sleep(10)
driver.find_element(:id, "user_current_password").clear
driver.find_element(:id, "user_current_password").send_keys "123456"
sleep(5)
driver.find_element(:class, "saveButton").click

#*********************** Enter all currect details *************************#
puts "Enter all currect details..."
sleep 10.0
driver.find_element(:id, "user_password").clear
driver.find_element(:id, "user_password").send_keys "654321"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").clear
driver.find_element(:id, "user_password_confirmation").send_keys "654321"
sleep(5)
driver.find_element(:class, "saveButton").click

#*********************** 2nd time change password ************************#
puts "2nd time changed password..."
sleep 10.0
driver.find_element(:link, "Preferences").click
sleep(10)
driver.find_element(:id, "user_current_password").send_keys "654321"
sleep 0.5
driver.find_element(:id, "user_password").send_keys "123456"
sleep 0.5
driver.find_element(:id, "user_password_confirmation").send_keys "123456"
sleep(5)
driver.find_element(:class, "saveButton").click
sleep(5)
driver.find_element(:link, "Log Out").click

#*************************************************************************#
#************************** Forgot your password *************************#
#*************************************************************************#
puts "Forgot me password?..."
sleep(5)
driver.find_element(:link, "Forgot your password?").click
puts "without enter email....showing error message..."
sleep 3.0
driver.find_element(:name, "commit").click
puts "Enter correct email....showing success message...."
sleep 10.0
driver.find_element(:id, "user_email").send_keys "singireddy447@gmail.com"
sleep 2.0
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:css, "img[alt='Logo']").click
sleep(5)
driver.find_element(:id, "user_email").send_keys "singireddy447@gmail.com"
driver.find_element(:id, "user_password").send_keys "123456"
sleep(5)
driver.find_element(:name, "commit").click

 
 