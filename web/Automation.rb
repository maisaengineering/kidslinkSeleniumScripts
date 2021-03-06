require "selenium-webdriver"
#********************************** same mail id using 9 places ****************************#
#driver = Selenium::WebDriver.for :remote, url: 'http://localhost:9515', desired_capabilities: :chrome
driver = Selenium::WebDriver.for :firefox
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
driver.manage().window().maximize()

#*******************************************************************#
################ Peachtree Presbyterian Preschool ###################
#*******************************************************************#
sleep(2)
puts "New User applying Org for Kid..."
driver.find_element(:xpath, "//*[contains(text(),'Apply the  Peachtree Presbyterian Preschool for season 2015-2016')]").click
sleep(3)
driver.find_element(:xpath, "(//span[@id='rwkExistingText'])[2]").click
#Prefered name
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
prenameId = driver.find_element(:id, "profile_univ__nickname")
prenameId.send_keys "kid1"
#Legalname
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
legalnameId = driver.find_element(:id, "profile_univ__fname")
legalnameId.send_keys "raju"
#lname
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
lnameId = driver.find_element(:id, "profile_univ__lname")
lnameId.send_keys "reddy"
#
sleep(2)
relation_select = driver.find_element(:name, "profile[univ][][gender]")
genderId = driver.find_element(:id, "profile_univ__gender")
genderId.send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
KbId = driver.find_element(:id, "profile_univ__birthdate")
KbId.send_keys "11/11/2011"
#
driver.find_element(:id, "profile_univ__food_allergies").clear
foodId = driver.find_element(:id, "profile_univ__food_allergies")
foodId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__medical_issues").clear
medicalId = driver.find_element(:id, "profile_univ__medical_issues")
medicalId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__special_needs").clear
needsId = driver.find_element(:id, "profile_univ__special_needs")
needsId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__other_concerns").clear
concernsId = driver.find_element(:id, "profile_univ__other_concerns")
concernsId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#Enrolment
relation_select = driver.find_element(:name, "profile[seas][][family_currently_enrolled]")
familyId = driver.find_element(:id, "profile_seas__family_currently_enrolled")
familyId.send_keys "N"
#
relation_select = driver.find_element(:name, "profile[seas][][active_member_of_ppc]")
activeId = driver.find_element(:id, "profile_seas__active_member_of_ppc")
activeId.send_keys "Y"
#
relation_select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
schooldaysId = driver.find_element(:id, "profile_seas__age_group_and_school_days")
schooldaysId.send_keys "3"
#
driver.find_element(:id, "profile_seas__secondary_choice_of_class_days").clear
secondaryId = driver.find_element(:id, "profile_seas__secondary_choice_of_class_days")
secondaryId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
relation_select = driver.find_element(:name, "profile[seas][][are_you_enrolling_siblings]")
siblingsId = driver.find_element(:id, "profile_seas__are_you_enrolling_siblings")
siblingsId.send_keys "Y"
#Address
driver.find_element(:id, "profile_univ__address1").clear
add1Id = driver.find_element(:id, "profile_univ__address1")
add1Id.send_keys "vgp kdsbf sdf sdf sdf "
#
driver.find_element(:id, "profile_univ__address2").clear
add2Id = driver.find_element(:id, "profile_univ__address2")
add2Id.send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
cityId = driver.find_element(:id, "profile_univ__city")
cityId.send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
stateId = driver.find_element(:id, "profile_univ__state")
stateId.send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
zipId = driver.find_element(:id, "profile_univ__zip")
zipId.send_keys "1p"
#*********************************** Parent details ****************************#
puts "Entering parent details..."
relation_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclassId = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclassId.send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
PFnamId = driver.find_element(:id, "profile_parent_0_fname")
PFnamId.send_keys "suresh"
#
driver.find_element(:id, "profile_parent_0_lname").clear
PLnamId = driver.find_element(:id, "profile_parent_0_lname")
PLnamId.send_keys "reddy"

#************************** Enter existing email address **********************#
puts "Enter existing email..."
driver.find_element(:id, "profile_parent_0_email").clear
emailId = driver.find_element(:id, "profile_parent_0_email")
emailId.send_keys "qasravan547+a2@gmail.com"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1PhonId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1PhonId.send_keys "5555555555"
#parent phone no.type
P1Phonetyp_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1phoId = driver.find_element(:id, "profile_parent_0_phone1_type")
P1phoId.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2PhoId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2PhoId.send_keys "5598997979"
#parent phone no.type
P2Phonetpe_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2pId = driver.find_element(:id, "profile_parent_0_phone2_type")
P2pId.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3PhoeId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3PhoeId.send_keys "5546644646"
#parent phone no.type
P3Phetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3phnId = driver.find_element(:id, "profile_parent_0_phone3_type")
P3phnId.send_keys "w"
#Agreement
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
classYesId = driver.find_element(:id, "profile_seas__terms")
classYesId.click
#
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(5)
puts "KidsLink Membership..."
select = driver.find_element(:name, "parent_profile_id")
IamId = driver.find_element(:id, "parent_profile_id")
IamId.send_keys "Father"
#password
sleep(5)
driver.find_element(:class, "standardForm").click
sleep(3)
puts "Password selection..."
passId = driver.find_element(:name, "user[password]")
passId.click
sleep(2)
passId = driver.find_element(:id, "user_password")
passId.send_keys "123456"
#re enter pass
RepassId = driver.find_element(:id, "user_password_confirmation")
RepassId.send_keys "123456"
sleep(2)
driver.find_element(:name, "commit").click
puts "Email address already exists...."
sleep(5)
driver.navigate().back()
sleep(5)
driver.navigate().back()

#**************************************************************************************************************************#
#################################### Enter Email and Replace all the places-Using (Ctrl+F)##################################
#**************************************************************************************************************************#
sleep(5)
puts "Enter new email address..."
driver.find_element(:id, "profile_parent_0_email").clear
emailId = driver.find_element(:id, "profile_parent_0_email")
emailId.send_keys "qasravan547+a85@gmail.com"
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(5)
puts "KidsLink Membership..."
select = driver.find_element(:name, "parent_profile_id")
Iam1Id = driver.find_element(:id, "parent_profile_id")
Iam1Id.send_keys "Father"
#password
sleep(5)
driver.find_element(:class, "standardForm").click
sleep(3)
puts "Password selection..."
driver.find_element(:name, "user[password]").click
sleep(2)
pass1Id = driver.find_element(:id, "user_password")
pass1Id.send_keys "123456"
#re enter pass
Repass1Id = driver.find_element(:id, "user_password_confirmation")
Repass1Id.send_keys "123456"
sleep(2)
puts "Account created without billing state..."
driver.find_element(:name, "commit").click
sleep(10)
driver.find_element(:css, "img[alt='Logo']").click
sleep 2.0
LoginButton = driver.find_element(:id, "user_email")
LoginButton.send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
EmailId = driver.find_element(:id, "user_password")
EmailId.send_keys "123456"
#Clicking on the Submit Button
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:id, "childPhotograph").click
puts "Showing empty Organization...."
sleep(10)
driver.find_element(:link, "Log Out").click
sleep(3)
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
sleep(2)
puts "Selecting organization for above created kid..."
driver.find_element(:xpath, "//*[contains(text(),'Apply the  Peachtree Presbyterian Preschool for season 2015-2016')]").click
sleep(3)
newId = driver.find_element(:id, "rwkExistingText")
newId.click
#********************************************************************#
###################### Enter above Email #############################
#********************************************************************#
sleep(2)
#Typing the UserName
puts "Existing user applying Org for Existing Kid..."
EmaiId = driver.find_element(:id, "user_email")
EmaiId.send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
Passw1Id = driver.find_element(:id, "user_password")
Passw1Id.send_keys "123456"
#Clicking on the Submit Button
sleep(2)
driver.find_element(:name, "commit").click
sleep(2)
re_select = driver.find_element(:name, "profile_id")
ChiId = driver.find_element(:id, "profile_id")
ChiId.send_keys "r"
sleep(2)
driver.find_element(:name, "commit").click
#Prefered name
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
prenameId = driver.find_element(:id, "profile_univ__nickname")
prenameId.send_keys "kid1"
#Legalname
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
legalnameId = driver.find_element(:id, "profile_univ__fname")
legalnameId.send_keys "raju"
#lname
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
lnameId = driver.find_element(:id, "profile_univ__lname")
lnameId.send_keys "reddy"
#
sleep(2)
relation_select = driver.find_element(:name, "profile[univ][][gender]")
genderId = driver.find_element(:id, "profile_univ__gender")
genderId.send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
KbirthId = driver.find_element(:id, "profile_univ__birthdate")
KbirthId.send_keys "11/11/2011"
#
driver.find_element(:id, "profile_univ__food_allergies").clear
foodId = driver.find_element(:id, "profile_univ__food_allergies")
foodId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__medical_issues").clear
medicalId = driver.find_element(:id, "profile_univ__medical_issues")
medicalId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__special_needs").clear
needsId = driver.find_element(:id, "profile_univ__special_needs")
needsId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
driver.find_element(:id, "profile_univ__other_concerns").clear
concernsId = driver.find_element(:id, "profile_univ__other_concerns")
concernsId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#Enrolment
relation_select = driver.find_element(:name, "profile[seas][][family_currently_enrolled]")
familyId = driver.find_element(:id, "profile_seas__family_currently_enrolled")
familyId.send_keys "N"
#
relation_select = driver.find_element(:name, "profile[seas][][active_member_of_ppc]")
activeId = driver.find_element(:id, "profile_seas__active_member_of_ppc")
activeId.send_keys "Y"
#
relation_select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
schooldaysId = driver.find_element(:id, "profile_seas__age_group_and_school_days")
schooldaysId.send_keys "3"
#
driver.find_element(:id, "profile_seas__secondary_choice_of_class_days").clear
secondaryId = driver.find_element(:id, "profile_seas__secondary_choice_of_class_days")
secondaryId.send_keys "gfsadf sdf sdfdsf dsfs f sf sf sdf dsf s dfsdfsdf sf dsfsdfsdf"
#
relation_select = driver.find_element(:name, "profile[seas][][are_you_enrolling_siblings]")
siblingsId = driver.find_element(:id, "profile_seas__are_you_enrolling_siblings")
siblingsId.send_keys "Y"
#Address
driver.find_element(:id, "profile_univ__address1").clear
add1Id = driver.find_element(:id, "profile_univ__address1")
add1Id.send_keys "vgp kdsbf sdf sdf sdf "
#
driver.find_element(:id, "profile_univ__address2").clear
add2Id = driver.find_element(:id, "profile_univ__address2")
add2Id.send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
cityId = driver.find_element(:id, "profile_univ__city")
cityId.send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
stateId = driver.find_element(:id, "profile_univ__state")
stateId.send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
zipId = driver.find_element(:id, "profile_univ__zip")
zipId.send_keys "1p"
#*********************************** Parent details **************************#
puts "Entering parent details..."
relation_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclassId = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclassId.send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
PFnameId = driver.find_element(:id, "profile_parent_0_fname")
PFnameId.send_keys "suresh"
#
driver.find_element(:id, "profile_parent_0_lname").clear
PLnameId = driver.find_element(:id, "profile_parent_0_lname")
PLnameId.send_keys "reddy"

#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1PhoneId.send_keys "5555555555"
#parent phone no.type
P1Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1phId = driver.find_element(:id, "profile_parent_0_phone1_type")
P1phId.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2PhoneId.send_keys "5598997979"
#parent phone no.type
P2Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2phId = driver.find_element(:id, "profile_parent_0_phone2_type")
P2phId.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3PhoneId.send_keys "5546644646"
#parent phone no.type
P3Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3phId = driver.find_element(:id, "profile_parent_0_phone3_type")
P3phId.send_keys "w"
#Agreement
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
classYesId = driver.find_element(:id, "profile_seas__terms")
classYesId.click
#
sleep(2)
driver.find_element(:name, "commit").click

#Billing start
puts "Billing Address..."
driver.find_element(:id, "transaction_credit_card_number").clear
CDnumberId = driver.find_element(:id, "transaction_credit_card_number")
CDnumberId.send_keys "4111111111111111"
#
driver.find_element(:id, "transaction_credit_card_expiration_date").clear
ExpireId = driver.find_element(:id, "transaction_credit_card_expiration_date")
ExpireId.send_keys "09/27"
#
driver.find_element(:id, "transaction_credit_card_cvv").clear
verificationId = driver.find_element(:id, "transaction_credit_card_cvv")
verificationId.send_keys "123"
#
driver.find_element(:id, "transaction_billing_street_address").clear
BaddrId = driver.find_element(:id, "transaction_billing_street_address")
BaddrId.send_keys "hyd"
#
driver.find_element(:id, "transaction_billing_locality").clear
BcityId = driver.find_element(:id, "transaction_billing_locality")
BcityId.send_keys "hyderabad"
#
driver.find_element(:id, "transaction_billing_region").clear
BstateId = driver.find_element(:id, "transaction_billing_region")
BstateId.send_keys "telangana"
#
driver.find_element(:id, "transaction_billing_postal_code").clear
BzipId = driver.find_element(:id, "transaction_billing_postal_code")
BzipId.send_keys "500052"
sleep(3)
chkbox = driver.find_element(:name, "privacy_policy1")
AckId = driver.find_element(:id, "privacy_policy1")
AckId.click
sleep(2)
driver.find_element(:name, "commit").click
sleep(10)
driver.find_element(:link, "Continue to the KidsLink dashboard").click

#*******************************************************************#
######################## Kid 1 Form submition #######################
#*******************************************************************# 
sleep(5)
puts "Kid 1 Form Submition..."
driver.find_element(:id, "childPhotograph").click
sleep(10)
driver.find_element(:link, "Peachtree Presbyterian Preschool").click
sleep(5)
driver.find_element(:link, "Application form").click
#Prefered name
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
prename1Id = driver.find_element(:id, "profile_univ__nickname")
prename1Id.send_keys "kid1"
#Legalname
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
legalname1Id = driver.find_element(:id, "profile_univ__fname")
legalname1Id.send_keys "kumar"
#lname
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
lname1Id = driver.find_element(:id, "profile_univ__lname")
lname1Id.send_keys "reddy"
#
sleep(2)
relation_select = driver.find_element(:name, "profile[univ][][gender]")
gender1Id = driver.find_element(:id, "profile_univ__gender")
gender1Id.send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
Kbirth1Id = driver.find_element(:id, "profile_univ__birthdate")
Kbirth1Id.send_keys "11/11/2012"
#
driver.find_element(:id, "profile_univ__food_allergies").clear
food1Id = driver.find_element(:id, "profile_univ__food_allergies")
food1Id.send_keys "we are good friends"
#
driver.find_element(:id, "profile_univ__medical_issues").clear
medical1Id = driver.find_element(:id, "profile_univ__medical_issues")
medical1Id.send_keys "all are very good"
#
driver.find_element(:id, "profile_univ__special_needs").clear
needs1Id = driver.find_element(:id, "profile_univ__special_needs")
needs1Id.send_keys "special needs "
#
driver.find_element(:id, "profile_univ__other_concerns").clear
concerns1Id = driver.find_element(:id, "profile_univ__other_concerns")
concerns1Id.send_keys "Other concerns "
#Enrolment
relation_select = driver.find_element(:name, "profile[seas][][family_currently_enrolled]")
family1Id = driver.find_element(:id, "profile_seas__family_currently_enrolled")
family1Id.send_keys "N"
#
relation_select = driver.find_element(:name, "profile[seas][][active_member_of_ppc]")
active1Id = driver.find_element(:id, "profile_seas__active_member_of_ppc")
active1Id.send_keys "Y"
#
driver.find_element(:id, "profile_seas__secondary_choice_of_class_days").clear
secondary1Id = driver.find_element(:id, "profile_seas__secondary_choice_of_class_days")
secondary1Id.send_keys "secondary choice of class days"
#
relation_select = driver.find_element(:name, "profile[seas][][are_you_enrolling_siblings]")
siblings1Id = driver.find_element(:id, "profile_seas__are_you_enrolling_siblings")
siblings1Id.send_keys "Y"
#Address
driver.find_element(:id, "profile_univ__address1").clear
add11Id = driver.find_element(:id, "profile_univ__address1")
add11Id.send_keys "Address  "
#
driver.find_element(:id, "profile_univ__address2").clear
add21Id = driver.find_element(:id, "profile_univ__address2")
add21Id.send_keys "Universal address 2"
#
driver.find_element(:id, "profile_univ__city").clear
city1Id = driver.find_element(:id, "profile_univ__city")
city1Id.send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
state1Id = driver.find_element(:id, "profile_univ__state")
state1Id.send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
zip1Id = driver.find_element(:id, "profile_univ__zip")
zip1Id.send_keys "1p"
#*********************************** Parent details **************************#
relation_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclass1Id = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclass1Id.send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
PFname1Id = driver.find_element(:id, "profile_parent_0_fname")
PFname1Id.send_keys "praveen"
#
driver.find_element(:id, "profile_parent_0_lname").clear
PLname1Id = driver.find_element(:id, "profile_parent_0_lname")
PLname1Id.send_keys "reddy"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1Phone12Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1Phone12Id.send_keys "123456"
#parent phone no.type
P12Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1ph12Id = driver.find_element(:id, "profile_parent_0_phone1_type")
P1ph12Id.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2Phone1Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2Phone1Id.send_keys "987654"
#parent phone no.type
P22Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2ph1Id = driver.find_element(:id, "profile_parent_0_phone2_type")
P2ph1Id.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3Phone1Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3Phone1Id.send_keys "6543219"
#parent phone no.type
P31Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3ph1Id = driver.find_element(:id, "profile_parent_0_phone3_type")
P3ph1Id.send_keys "w"
sleep(2)
Submit5 = driver.find_element(:name, "commit")
Submit5.click
#***************** KidsLink Home *******************#
sleep(3)
driver.find_element(:link, "kidslink home").click

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
#
/sleep(5)
invitId = driver.find_element(:link, "Invite")
invitId.click/
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
#sleep(5)
#driver.find_element(:link, "12/19/2005").click

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
sleep(10)		
driver.find_element(:xpath, "(//a[contains(@href, '#')])[50]").click	
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
#sleep(5)
#driver.find_element(:link, "01/01/2015").click
sleep(10)
driver.find_element(:link, "Edit").click
sleep(10)
driver.find_element(:xpath, "//a[contains(text(),'Delete document')]").click
sleep(5)
driver.switch_to.alert.accept
#*******************************************************************#
############################ Child profile edit #####################
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
driver.find_element(:id, "kid_mname").clear
MnameId = driver.find_element(:id, "kid_mname")
MnameId.send_keys "kumar"
#Typing the Lname
driver.find_element(:id, "kid_lname").clear
KnameId = driver.find_element(:id, "kid_lname")
KnameId.send_keys "Sravan"
#Typing the Preforedred name
driver.find_element(:id, "kid_nickname").clear
NnameId = driver.find_element(:id, "kid_nickname")
NnameId.send_keys "kid1"
#Enter Birth date
driver.find_element(:id, "kid_birthdate").clear
BirthId = driver.find_element(:id, "kid_birthdate")
BirthId.send_keys "12/19/2012"
#Kid gender
gender_select = driver.find_element(:name, "kid[gender]")
GenderId = driver.find_element(:id, "kid_gender")
GenderId.send_keys "Boy"
#Address1
driver.find_element(:id, "address_address1").clear
Address1Id = driver.find_element(:id, "address_address1")
Address1Id.send_keys "monda:Siricilla,H-no:1-11/1"
#Address2
driver.find_element(:id, "address_address2").clear
Address2Id = driver.find_element(:id, "address_address2")
Address2Id.send_keys "Dist:karimnagar"
#Address city
driver.find_element(:id, "address_city").clear
AddresscityId = driver.find_element(:id, "address_city")
AddresscityId.send_keys "sircilla"
#Address state
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
DoctorPId.send_keys "0909000091"
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
DentistPId.send_keys "0888888888"
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
parent1Id.send_keys "Father"
#parent Fname
driver.find_element(:id, "parents_0_info_fname").clear
P1FnameId = driver.find_element(:id, "parents_0_info_fname")
P1FnameId.send_keys "RAM"
#parent Mname
driver.find_element(:id, "parents_0_info_mname").clear
P1MnameId = driver.find_element(:id, "parents_0_info_mname")
P1MnameId.send_keys "kumar"
#Parent Lname
driver.find_element(:id, "parents_0_info_lname").clear
P1LnameId = driver.find_element(:id, "parents_0_info_lname")
P1LnameId.send_keys "reddy"
#parent phone number
driver.find_element(:id, "parents_0_info_phone_numbers_0_contact").clear
P1Phone1Id = driver.find_element(:id, "parents_0_info_phone_numbers_0_contact")
P1Phone1Id.send_keys "555555555555555555"
#parent phone no.type
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
#sleep(5)
#puts "Save profile...."
#driver.find_element(:link, "Save profile").click
#************************  Cancel  ***************************#
#sleep(5)
#driver.find_element(:link, "Cancel").click

#*******************************************************************#
################### Parent2 Relationship(Optional) ###################
#*******************************************************************#
puts "Add new parent to Kid1..."
sleep(5)
driver.find_element(:link, "add new parent/guardian").click
#parent2 relationship(Optional)
puts "Add second parent..."
sleep(10)
relation2_select = driver.find_element(:name, "parents[1][profiles_manageds][child_relationship]")
driver.find_element(:id, "parents_1_profiles_manageds_child_relationship").send_keys "Mother"
#Check box
sleep(5)
chkbox = driver.find_element(:name, "parents[1][profiles_manageds][manageable]")
driver.find_element(:id, "parents_1_profiles_manageds_manageable").click
#parent2 Fname
driver.find_element(:id, "parents_1_info_fname").clear
driver.find_element(:id, "parents_1_info_fname").send_keys "RAM"
#parent2 Mname
driver.find_element(:id, "parents_1_info_mname").clear
driver.find_element(:id, "parents_1_info_mname").send_keys "kumar"
#Parent2 Lname
#sleep(5)
driver.find_element(:id, "parents_1_info_lname").clear
P2LnameId = driver.find_element(:id, "parents_1_info_lname")
P2LnameId.send_keys "reddy"
#parent2 phone number
driver.find_element(:id, "parents_1_info_phone_numbers_0_contact").clear
driver.find_element(:id, "parents_1_info_phone_numbers_0_contact").send_keys "555555555555"
#parent2 phone no.type
Phonetype2_select = driver.find_element(:name, "parents[1][info][phone_numbers][0][type]")
driver.find_element(:id, "parents_1_info_phone_numbers_0_type").send_keys "Mobile"
#parent2 phone2
driver.find_element(:id, "parents_1_info_phone_numbers_1_contact").clear
driver.find_element(:id, "parents_1_info_phone_numbers_1_contact").send_keys "666666666"
#parent2 phone no.type2
Ph_select = driver.find_element(:name, "parents[1][info][phone_numbers][1][type]")
driver.find_element(:id, "parents_1_info_phone_numbers_1_type").send_keys "Home"
#parent2 phone3
driver.find_element(:id, "parents_1_info_phone_numbers_2_contact").clear
driver.find_element(:id, "parents_1_info_phone_numbers_2_contact").send_keys "777777777"
#parent2 phone no.type2
Phone2te3_select = driver.find_element(:name, "parents[1][info][phone_numbers][2][type]")
driver.find_element(:id, "parents_1_info_phone_numbers_2_type").send_keys "Work"
#parent2 email id.
driver.find_element(:id, "parents_1_info_email").clear
driver.find_element(:id, "parents_1_info_email").send_keys "ioss@test.com"
#Save profile
sleep(5)
driver.find_element(:link, "Save profile").click

#Cancel details
#sleep(5)
#driver.find_element(:link, "Cancel").click

#Adding new parent
#sleep(5)
#driver.find_element(:link, "add new parent/guardian").click

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

#*******************************************************************#
############################ Add new child  #########################
#*******************************************************************#    
puts "Add new child..."
sleep(10)
driver.find_element(:link, "Preferences").click
sleep(10)
preferredId = driver.find_element(:xpath, "//input[@id='user_kid_nickname']")
preferredId.send_keys "kid2"
#Kid Fname
FnameId = driver.find_element(:id, "user_kid_fname")
FnameId.send_keys "sravasthik"
#Kid Lname
LnameId = driver.find_element(:id, "user_kid_lname")
LnameId.send_keys "reddy"
#Kidbirth date
KidbirthId = driver.find_element(:id, "user_kid_birthdate")
KidbirthId.send_keys "11/11/2013"
#Kid gender selection
sleep(5)
select = driver.find_element(:name, "user[kid][gender]")
KgenderId = driver.find_element(:id, "user_kid_gender")
KgenderId.send_keys "Girl"
#Save profile
sleep(5)
driver.find_element(:class, "saveButton").click
sleep(5)
driver.find_element(:link, "Log Out").click

#*******************************************************************#
####################### Cathedral Preschool #########################
#*******************************************************************#
sleep(3)
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
sleep(2)
puts "Selecting organization"
driver.find_element(:xpath, "//*[contains(text(),'Apply the  Cathedral Preschool for season 2015-2016')]").click
sleep(3)
newId = driver.find_element(:id, "rwkExistingText")
newId.click
#********************************************************************#
###################### Enter above Email #############################
#********************************************************************#
sleep(2)
#Typing the UserName
puts "Existing user applying Org for Existing Kid..."
Email1Id = driver.find_element(:id, "user_email")
Email1Id.send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
Password1Id = driver.find_element(:id, "user_password")
Password1Id.send_keys "123456"
#Clicking on the Submit Button
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(2)
relation_select = driver.find_element(:name, "profile_id")
driver.find_element(:id, "profile_id").send_keys "sravasthik"
#
sleep(5)
driver.find_element(:name, "commit").click
#Prefered name
sleep(2)
puts "Add org for kid 2..."
driver.find_element(:id, "profile_univ__lname").clear
driver.find_element(:id, "profile_univ__lname").send_keys "reddy"
#
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
driver.find_element(:id, "profile_univ__nickname").send_keys "kid2"
#
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
driver.find_element(:id, "profile_univ__fname").send_keys "rithwik"

sleep(2)
select = driver.find_element(:name, "profile[univ][][gender]")
driver.find_element(:id, "profile_univ__gender").send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
driver.find_element(:id, "profile_univ__birthdate").send_keys "11/11/2013"
#
driver.find_element(:id, "profile_univ__address1").clear
driver.find_element(:id, "profile_univ__address1").send_keys "vgp kdsbf sdf sdf sdf "
#
driver.find_element(:id, "profile_univ__address2").clear
driver.find_element(:id, "profile_univ__address2").send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
driver.find_element(:id, "profile_univ__city").send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
driver.find_element(:id, "profile_univ__state").send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
driver.find_element(:id, "profile_univ__zip").send_keys "1p"
#pppppppp
select = driver.find_element(:name, "profile[parent][0][child_relationship]")
driver.find_element(:id, "profile_parent_0_child_relationship").send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
driver.find_element(:id, "profile_parent_0_fname").send_keys "chinnu"
#
driver.find_element(:id, "profile_parent_0_lname").clear
driver.find_element(:id, "profile_parent_0_lname").send_keys "kumar"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").send_keys "5555555555"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone1_type").send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").send_keys "5598997979"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone2_type").send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").send_keys "5546644646"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone3_type").send_keys "w"
##Enrollment Preference

select = driver.find_element(:name, "profile[seas][][active_member_of_cathedral]")
driver.find_element(:id, "profile_seas__active_member_of_cathedral").send_keys "Y"
select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
driver.find_element(:id, "profile_seas__age_group_and_school_days").send_keys "k"
#Registration and Tuition Contract
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][contact_permission]")
driver.find_element(:id, "profile_seas__contact_permission").click
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
driver.find_element(:id, "profile_seas__terms").click
sleep(2)
driver.find_element(:name, "commit").click
########Billing start
driver.find_element(:id, "transaction_credit_card_number").clear
driver.find_element(:id, "transaction_credit_card_number").send_keys "4111111111111111"
#
driver.find_element(:id, "transaction_credit_card_expiration_date").clear
driver.find_element(:id, "transaction_credit_card_expiration_date").send_keys "09/27"
#
driver.find_element(:id, "transaction_credit_card_cvv").clear
driver.find_element(:id, "transaction_credit_card_cvv").send_keys "123"
#
driver.find_element(:id, "transaction_billing_street_address").clear
driver.find_element(:id, "transaction_billing_street_address").send_keys "hyd"
#
driver.find_element(:id, "transaction_billing_locality").clear
driver.find_element(:id, "transaction_billing_locality").send_keys "hyderabad"
#
driver.find_element(:id, "transaction_billing_region").clear
driver.find_element(:id, "transaction_billing_region").send_keys "telangana"
#
driver.find_element(:id, "transaction_billing_postal_code").clear
driver.find_element(:id, "transaction_billing_postal_code").send_keys "500052"
sleep(5)
chkbox = driver.find_element(:name, "privacy_policy1")
driver.find_element(:id, "privacy_policy1").click
sleep(2)
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:link, "Continue to the KidsLink dashboard").click

#*******************************************************************#
######################## Kid2 Form submition ########################
#*******************************************************************# 
sleep(10)
puts "Kid 2 Form Submition..."
driver.find_element(:xpath, "//div[contains(@id, 'childPhotograph')][2]").click
sleep(10)
driver.find_element(:link, "Cathedral Preschool").click
sleep(5)
driver.find_element(:link, "Application form").click
#Prefered name
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
driver.find_element(:id, "profile_univ__lname").send_keys "reddy"
#
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
driver.find_element(:id, "profile_univ__nickname").send_keys "kid2"
#
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
driver.find_element(:id, "profile_univ__fname").send_keys "rithwik"
sleep(2)
select = driver.find_element(:name, "profile[univ][][gender]")
driver.find_element(:id, "profile_univ__gender").send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
driver.find_element(:id, "profile_univ__birthdate").send_keys "11/11/2013"
#
driver.find_element(:id, "profile_univ__address1").clear
driver.find_element(:id, "profile_univ__address1").send_keys "we are good friends "
#
driver.find_element(:id, "profile_univ__address2").clear
driver.find_element(:id, "profile_univ__address2").send_keys "we are good friends"
#
driver.find_element(:id, "profile_univ__city").clear
driver.find_element(:id, "profile_univ__city").send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
driver.find_element(:id, "profile_univ__state").send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
driver.find_element(:id, "profile_univ__zip").send_keys "1p"
#pppppppp
select = driver.find_element(:name, "profile[parent][0][child_relationship]")
driver.find_element(:id, "profile_parent_0_child_relationship").send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
driver.find_element(:id, "profile_parent_0_fname").send_keys "praveen"
driver.find_element(:id, "profile_parent_0_lname").clear
driver.find_element(:id, "profile_parent_0_lname").send_keys "reddy"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").send_keys "5555555555"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone1_type").send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").send_keys "5598997979"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone2_type").send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").send_keys "5546644646"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone3_type").send_keys "w"
##Enrollment Preference

select = driver.find_element(:name, "profile[seas][][active_member_of_cathedral]")
driver.find_element(:id, "profile_seas__active_member_of_cathedral").send_keys "Y"
sleep(2)
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:link, "Log Out").click

#*****************************************************************************************#
################ The Preschool @ Peachtree Road United Methodist Church ###################
#*****************************************************************************************#
sleep(3)
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
sleep(2)
puts "Selecting organization"
driver.find_element(:xpath, "//*[contains(text(),'Apply the  The Preschool @ Peachtree Road United Methodist Church for season 2015-2016')]").click
sleep(3)
driver.find_element(:id, "rwkExistingText").click

#********************************************************************#
###################### Enter above Email #############################
#********************************************************************#
sleep(2)
puts "Applying same Org for new kid..."
#Typing the UserName
driver.find_element(:id, "user_email").send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
driver.find_element(:id, "user_password").send_keys "123456"
#Submit Button
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(5)
driver.find_element(:name, "profile_id")
driver.find_element(:id, "profile_id").send_keys "**New child**"
sleep(5)
driver.find_element(:name, "commit").click
#
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
driver.find_element(:id, "profile_univ__lname").send_keys "reddy"
#
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
driver.find_element(:id, "profile_univ__fname").send_keys "shiva"
#
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
driver.find_element(:id, "profile_univ__nickname").send_keys "kid 3"
#
sleep(2)
select = driver.find_element(:name, "profile[univ][][gender]")
driver.find_element(:id, "profile_univ__gender").send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
driver.find_element(:id, "profile_univ__birthdate").send_keys "11/11/2014"
#
select = driver.find_element(:name, "profile[seas][][active_member_of_prumc]")
driver.find_element(:id, "profile_seas__active_member_of_prumc").send_keys "Y"
#
select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
driver.find_element(:id, "profile_seas__age_group_and_school_days").send_keys "Y"
#
select = driver.find_element(:name, "profile[seas][][secondary_choice_of_class_days]")
driver.find_element(:id, "profile_seas__secondary_choice_of_class_days").send_keys "Y"
#
select = driver.find_element(:name, "profile[seas][][third_choice_of_class_days]")
driver.find_element(:id, "profile_seas__third_choice_of_class_days").send_keys "Y"
#
select = driver.find_element(:name, "profile[seas][][previous_class]")
driver.find_element(:id, "profile_seas__previous_class").send_keys "Y"
#
driver.find_element(:id, "profile_univ__address1").clear
driver.find_element(:id, "profile_univ__address1").send_keys "this is very imp"
#
driver.find_element(:id, "profile_univ__address2").clear
driver.find_element(:id, "profile_univ__address2").send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
driver.find_element(:id, "profile_univ__city").send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
driver.find_element(:id, "profile_univ__state").send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
driver.find_element(:id, "profile_univ__zip").send_keys "1p"
#pppppppp
select = driver.find_element(:name, "profile[parent][0][child_relationship]")
driver.find_element(:id, "profile_parent_0_child_relationship").send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
driver.find_element(:id, "profile_parent_0_fname").send_keys "ram"
#
driver.find_element(:id, "profile_parent_0_lname").clear
driver.find_element(:id, "profile_parent_0_lname").send_keys "kumar"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1Phone39Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1Phone39Id.send_keys "5555555555"
#parent phone no.type
P13Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1ph39Id = driver.find_element(:id, "profile_parent_0_phone1_type")
P1ph39Id.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2Phone3Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2Phone3Id.send_keys "5598997979"
#parent phone no.type
P23Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2ph3Id = driver.find_element(:id, "profile_parent_0_phone2_type")
P2ph3Id.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3Phone3Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3Phone3Id.send_keys "5546644646"
#parent phone no.type
P33Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3ph3Id = driver.find_element(:id, "profile_parent_0_phone3_type")
P3ph3Id.send_keys "w"
##########
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
driver.find_element(:id, "profile_seas__terms").click
#
sleep(2)
driver.find_element(:name, "commit").click
#Billing start
driver.find_element(:id, "transaction_credit_card_number").clear
CDnumber3Id = driver.find_element(:id, "transaction_credit_card_number")
CDnumber3Id.send_keys "4111111111111111"
#
driver.find_element(:id, "transaction_credit_card_expiration_date").clear
Expire3Id = driver.find_element(:id, "transaction_credit_card_expiration_date")
Expire3Id.send_keys "09/27"
#
driver.find_element(:id, "transaction_credit_card_cvv").clear
verification3Id = driver.find_element(:id, "transaction_credit_card_cvv")
verification3Id.send_keys "123"
#
driver.find_element(:id, "transaction_billing_street_address").clear
Baddr3Id = driver.find_element(:id, "transaction_billing_street_address")
Baddr3Id.send_keys "hyd"
#
driver.find_element(:id, "transaction_billing_locality").clear
Bcity3Id = driver.find_element(:id, "transaction_billing_locality")
Bcity3Id.send_keys "hyderabad"
#
driver.find_element(:id, "transaction_billing_region").clear
Bstate3Id = driver.find_element(:id, "transaction_billing_region")
Bstate3Id.send_keys "telangana"
#
driver.find_element(:id, "transaction_billing_postal_code").clear
Bzip3Id = driver.find_element(:id, "transaction_billing_postal_code")
Bzip3Id.send_keys "500052"
sleep(5)
chkbox = driver.find_element(:name, "privacy_policy1")
Ack3Id = driver.find_element(:id, "privacy_policy1")
Ack3Id.click
sleep(2)
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:link, "Continue to the KidsLink dashboard").click

#*******************************************************************#
######################## Kid 3 Form submition #######################
#*******************************************************************# 
sleep(10)
puts "Kid 3 Form Submition..."
driver.find_element(:xpath, "//div[contains(@id, 'childPhotograph')][3]").click
sleep(10)
driver.find_element(:link, "The Preschool @ Peachtree Road United Methodist Church").click
sleep(5)
driver.find_element(:link, "Registration form").click
#
sleep(2)
driver.find_element(:id, "profile_univ__lname").clear
driver.find_element(:id, "profile_univ__lname").send_keys "reddy"
#
sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
driver.find_element(:id, "profile_univ__fname").send_keys "bhannu"
#
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
driver.find_element(:id, "profile_univ__nickname").send_keys "kid 3"
#
sleep(2)
select = driver.find_element(:name, "profile[univ][][gender]")
driver.find_element(:id, "profile_univ__gender").send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
driver.find_element(:id, "profile_univ__birthdate").send_keys "11/11/2014"
#
select = driver.find_element(:name, "profile[seas][][active_member_of_prumc]")
driver.find_element(:id, "profile_seas__active_member_of_prumc").send_keys "Y"
#
select = driver.find_element(:name, "profile[seas][][previous_class]")
driver.find_element(:id, "profile_seas__previous_class").send_keys "Y"
#
driver.find_element(:id, "profile_univ__address1").clear
driver.find_element(:id, "profile_univ__address1").send_keys "this is very imp"
#
driver.find_element(:id, "profile_univ__address2").clear
driver.find_element(:id, "profile_univ__address2").send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
driver.find_element(:id, "profile_univ__city").send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
driver.find_element(:id, "profile_univ__state").send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
driver.find_element(:id, "profile_univ__zip").send_keys "1p"
#pppppppp
select = driver.find_element(:name, "profile[parent][0][child_relationship]")
driver.find_element(:id, "profile_parent_0_child_relationship").send_keys "f"
#
driver.find_element(:id, "profile_parent_0_fname").clear
driver.find_element(:id, "profile_parent_0_fname").send_keys "prashanth"
#
driver.find_element(:id, "profile_parent_0_lname").clear
driver.find_element(:id, "profile_parent_0_lname").send_keys "reddy"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").send_keys "5555555555"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone1_type").send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").send_keys "5598997979"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone2_type").send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").send_keys "5546644646"
#parent phone no.type
select = driver.find_element(:name, "profile[parent][0][phone1][type]")
driver.find_element(:id, "profile_parent_0_phone3_type").send_keys "w"
#
sleep(2)
driver.find_element(:name, "commit").click
sleep(3)
driver.find_element(:link, "kidslink home").click
sleep(5)
driver.find_element(:link, "Log Out").click

#*****************************************************************************************#
################ The Preschool @ Peachtree Road United Methodist Church ###################
#*****************************************************************************************#
sleep(3)

driver.navigate.to "https://kl-json.herokuapp.com/home/index"
sleep(5)
puts "Org is already applyed for same kid....negative case..."
driver.find_element(:xpath, "//*[contains(text(),'Apply the  The Preschool @ Peachtree Road United Methodist Church for season 2015-2016')]").click
sleep(3)
driver.find_element(:id, "rwkExistingText").click

#********************************************************************#
###################### Enter above Email #############################
#********************************************************************#
sleep(2)
#Typing the UserName
driver.find_element(:id, "user_email").send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
driver.find_element(:id, "user_password").send_keys "123456"
#Submit Button
sleep(2)
driver.find_element(:name, "commit").click
puts "Enter wrong value(Negative test)...."
sleep(2)
driver.find_element(:name, "profile_id")
driver.find_element(:id, "profile_id").send_keys "si"
sleep(5)
driver.find_element(:name, "commit").click
#
driver.find_element(:link, "Log Out").click

#*******************************************************************#
###################### 1st Presbyterian Preschool ###################
#*******************************************************************#
sleep(10)
#Loading the assertselenium URL
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
puts "Applying '1st Presbyterian Preschool' for above existing Kid..."
sleep(2)
driver.find_element(:xpath, "//*[contains(text(),'Apply the  1st Presbyterian Preschool for season 2015-2016')]").click
sleep(3)
driver.find_element(:id, "rwkExistingText").click
sleep(2)
#Typing the UserName
Email8Id = driver.find_element(:id, "user_email")
Email8Id.send_keys "qasravan547+a85@gmail.com"
#Typing the Email-Id
Password8Id = driver.find_element(:id, "user_password")
Password8Id.send_keys "123456"
#Clicking on the Submit Button
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(2)
relation8_select = driver.find_element(:name, "profile_id")
Childapply8Id = driver.find_element(:id, "profile_id")
Childapply8Id.send_keys "s"
#ChildapplyId.send_keys "**New child**"
sleep(2)
driver.find_element(:name, "commit").click
#
sleep(5)
driver.find_element(:id, "profile_univ__fname").clear
Fname8Id = driver.find_element(:id, "profile_univ__fname")
Fname8Id.send_keys "raju"
#
sleep(5)
driver.find_element(:id, "profile_univ__lname").clear
lname8Id = driver.find_element(:id, "profile_univ__lname")
lname8Id.send_keys "reddy"
#
sleep(2)
relation8_select = driver.find_element(:name, "profile[univ][][gender]")
gender8Id = driver.find_element(:id, "profile_univ__gender")
gender8Id.send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
Kbirth8Id = driver.find_element(:id, "profile_univ__birthdate")
Kbirth8Id.send_keys "11/11/2012"
#
relation8_select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
fstclass8Id = driver.find_element(:id, "profile_seas__age_group_and_school_days")
fstclass8Id.send_keys "m/w"
#
relation8_select = driver.find_element(:name, "profile[seas][][secondary_choice_of_class_days]")
scndclass8Id = driver.find_element(:id, "profile_seas__secondary_choice_of_class_days")
scndclass8Id.send_keys "T"
#
driver.find_element(:id, "profile_univ__address1").clear
add18Id = driver.find_element(:id, "profile_univ__address1")
add18Id.send_keys "this is very imp"
#
driver.find_element(:id, "profile_univ__address2").clear
add28Id = driver.find_element(:id, "profile_univ__address2")
add28Id.send_keys "jksdfkjs fsdf dsdfgdg df gdf g fdg dfs dfgdfg dms"
#
driver.find_element(:id, "profile_univ__city").clear
city8Id = driver.find_element(:id, "profile_univ__city")
city8Id.send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
state8Id = driver.find_element(:id, "profile_univ__state")
state8Id.send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
zip8Id = driver.find_element(:id, "profile_univ__zip")
zip8Id.send_keys "1p"
#
relation8_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclass8Id = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclass8Id.send_keys "f"
#
driver.find_element(:id, "profile_univ__zip").clear
zip8Id = driver.find_element(:id, "profile_univ__zip")
zip8Id.send_keys "1p"
#
driver.find_element(:id, "profile_parent_0_fname").clear
PFname8Id = driver.find_element(:id, "profile_parent_0_fname")
PFname8Id.send_keys "man"
#
driver.find_element(:id, "profile_parent_0_lname").clear
PLname8Id = driver.find_element(:id, "profile_parent_0_lname")
PLname8Id.send_keys "super"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1Phone8Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1Phone8Id.send_keys "55555555555"
#parent phone no.type
P1Phonetype8_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1ph8Id = driver.find_element(:id, "profile_parent_0_phone1_type")
P1ph8Id.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2Phone8Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2Phone8Id.send_keys "5598997979877979"
#parent phone no.type
P2Phonetype8_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2ph8Id = driver.find_element(:id, "profile_parent_0_phone2_type")
P2ph8Id.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3Phone8Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3Phone8Id.send_keys "5546644646464"
#parent phone no.type
P3Phonetype8_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3ph8Id = driver.find_element(:id, "profile_parent_0_phone3_type")
P3ph8Id.send_keys "w"
#
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][class_listing_auth_yes]")
classYes8Id = driver.find_element(:id, "profile_seas__class_listing_auth_yes")
classYes8Id.click
#
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][class_listing_auth_no]")
classNo8Id = driver.find_element(:id, "profile_seas__class_listing_auth_no")
classNo8Id.click
#
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][org_listing_auth_yes]")
schoolYes8Id = driver.find_element(:id, "profile_seas__org_listing_auth_yes")
schoolYes8Id.click
#
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][org_listing_auth_no]")
schoolNo8Id = driver.find_element(:id, "profile_seas__org_listing_auth_no")
schoolNo8Id.click
#
media_select = driver.find_element(:name, "profile[seas][][media_release_perm]")
media8Id = driver.find_element(:id, "profile_seas__media_release_perm")
media8Id.send_keys "y"
#
sleep(5)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
sign8Id = driver.find_element(:id, "profile_seas__terms")
sign8Id.click
#
sleep(2)
driver.find_element(:name, "commit").click
#Billing start
driver.find_element(:id, "transaction_credit_card_number").clear
CDnumber8Id = driver.find_element(:id, "transaction_credit_card_number")
CDnumber8Id.send_keys "4111111111111111"
#
driver.find_element(:id, "transaction_credit_card_expiration_date").clear
Expire8Id = driver.find_element(:id, "transaction_credit_card_expiration_date")
Expire8Id.send_keys "09/27"
#
driver.find_element(:id, "transaction_credit_card_cvv").clear
verification8Id = driver.find_element(:id, "transaction_credit_card_cvv")
verification8Id.send_keys "123"
#
driver.find_element(:id, "transaction_billing_street_address").clear
Baddr8Id = driver.find_element(:id, "transaction_billing_street_address")
Baddr8Id.send_keys "hyd"
#
driver.find_element(:id, "transaction_billing_locality").clear
Bcity8Id = driver.find_element(:id, "transaction_billing_locality")
Bcity8Id.send_keys "hyderabad"
#
driver.find_element(:id, "transaction_billing_region").clear
Bstate8Id = driver.find_element(:id, "transaction_billing_region")
Bstate8Id.send_keys "telangana"
#
driver.find_element(:id, "transaction_billing_postal_code").clear
Bzip8Id = driver.find_element(:id, "transaction_billing_postal_code")
Bzip8Id.send_keys "500052"
sleep(5)
chkbox = driver.find_element(:name, "privacy_policy1")
Ack8Id = driver.find_element(:id, "privacy_policy1")
Ack8Id.click
sleep(2)
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:link, "Continue to the KidsLink dashboard").click()

#*******************************************************************#
###################### Kid 1 new Form submition #####################
#*******************************************************************# 
sleep(10)
puts "Kid 1 1st Presbyterian form submition..."
driver.find_element(:xpath, "//div[contains(@id, 'childPhotograph')]").click
sleep(10)
driver.find_element(:link, "1st Presbyterian Preschool").click
sleep(6)
driver.find_element(:link, "Application Form").click
#
sleep(5)
driver.find_element(:id, "profile_univ__fname").clear
Fname7Id = driver.find_element(:id, "profile_univ__fname")
Fname7Id.send_keys "raju"
#
sleep(5)
driver.find_element(:id, "profile_univ__lname").clear
lname8Id = driver.find_element(:id, "profile_univ__lname")
lname8Id.send_keys "reddy"
#
sleep(2)
relation8_select = driver.find_element(:name, "profile[univ][][gender]")
gender8Id = driver.find_element(:id, "profile_univ__gender")
gender8Id.send_keys "Male"
#
driver.find_element(:id, "profile_univ__birthdate").clear
Kbirth7Id = driver.find_element(:id, "profile_univ__birthdate")
Kbirth7Id.send_keys "11/11/2012"
#
driver.find_element(:id, "profile_univ__address1").clear
add18Id = driver.find_element(:id, "profile_univ__address1")
add18Id.send_keys "this is very imp"
#
driver.find_element(:id, "profile_univ__address2").clear
add28Id = driver.find_element(:id, "profile_univ__address2")
add28Id.send_keys "HIiiiiiiiiiiiiiiiiiiiiiiiiii"
#
driver.find_element(:id, "profile_univ__city").clear
city8Id = driver.find_element(:id, "profile_univ__city")
city8Id.send_keys "karimnagar"
#
driver.find_element(:id, "profile_univ__state").clear
state8Id = driver.find_element(:id, "profile_univ__state")
state8Id.send_keys "Telangana"
#
driver.find_element(:id, "profile_univ__zip").clear
zip8Id = driver.find_element(:id, "profile_univ__zip")
zip8Id.send_keys "1p"
#
relation8_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclass8Id = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclass8Id.send_keys "f"
#
driver.find_element(:id, "profile_univ__zip").clear
zip8Id = driver.find_element(:id, "profile_univ__zip")
zip8Id.send_keys "1p"
#
driver.find_element(:id, "profile_parent_0_fname").clear
PFname88Id = driver.find_element(:id, "profile_parent_0_fname")
PFname88Id.send_keys "suresh"
#
driver.find_element(:id, "profile_parent_0_lname").clear
PLname88Id = driver.find_element(:id, "profile_parent_0_lname")
PLname88Id.send_keys "reddy"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1Phone88Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1Phone88Id.send_keys "55555555555"
#parent phone no.type
P1Phonetype88_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1ph88Id = driver.find_element(:id, "profile_parent_0_phone1_type")
P1ph88Id.send_keys "Mobile"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2Phone88Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2Phone88Id.send_keys "5598997979877979"
#parent phone no.type
P2Phonetype88_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2ph88Id = driver.find_element(:id, "profile_parent_0_phone2_type")
P2ph88Id.send_keys "h"
#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3Phone88Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3Phone88Id.send_keys "5546644646464"
#parent phone no.type
P3Phonetype88_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3ph88Id = driver.find_element(:id, "profile_parent_0_phone3_type")
P3ph88Id.send_keys "w"
sleep(2)
media1_select = driver.find_element(:name, "profile[seas][][media_release_perm]")
media88Id = driver.find_element(:id, "profile_seas__media_release_perm")
media88Id.send_keys "y"
#
sleep(2)
driver.find_element(:name, "commit").click

#***************** KidsLink Home *******************#
sleep(3)
driver.find_element(:link, "kidslink home").click

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
driver.find_element(:id, "user_email").send_keys "qasravan547+a85@gmail.com"
sleep 2.0
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:css, "img[alt='Logo']").click
sleep(5)
driver.find_element(:id, "user_email").send_keys "qasravan547+a85@gmail.com"
driver.find_element(:id, "user_password").send_keys "123456"
sleep(5)
driver.find_element(:name, "commit").click


















