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

#*******************************************************************#
########################### Form submition ##########################
#*******************************************************************# 
sleep(5)
puts "Form Submition..."
driver.find_element(:id, "childPhotograph").click
sleep(5)
driver.find_element(:link, "Peachtree Presbyterian Preschool").click
sleep(5)
driver.find_element(:link, "Application form").click

#Prefered name
sleep(2)
driver.find_element(:id, "profile_univ__nickname").clear
prename1Id = driver.find_element(:id, "profile_univ__nickname")
prename1Id.send_keys "ram"

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
P1Phone1Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1Phone1Id.send_keys "123456"

#parent phone no.type
P1Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1ph1Id = driver.find_element(:id, "profile_parent_0_phone1_type")
P1ph1Id.send_keys "Mobile"

#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2Phone1Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2Phone1Id.send_keys "987654"

#parent phone no.type
P2Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2ph1Id = driver.find_element(:id, "profile_parent_0_phone2_type")
P2ph1Id.send_keys "h"

#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3Phone1Id = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3Phone1Id.send_keys "6543219"

#parent phone no.type
P3Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3ph1Id = driver.find_element(:id, "profile_parent_0_phone3_type")
P3ph1Id.send_keys "w"
sleep(2)
Submit3 = driver.find_element(:name, "commit")
Submit3.click

#***************** KidsLink Home *******************#
sleep(3)
driver.find_element(:link, "kidslink home").click
