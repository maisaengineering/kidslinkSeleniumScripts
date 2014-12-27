require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://kl-json.herokuapp.com"

#Typing the UserName
EmailId = driver.find_element(:id, "user_email")
EmailId.send_keys "ios15@test.com"

#Typing the Email-Id
PasswordId = driver.find_element(:id, "user_password")
PasswordId.send_keys "123456"

#Clicking on the Submit Button
sleep(5)
SubmitButton = driver.find_element(:name, "commit")
SubmitButton.click

#Click on childPhotograph
sleep(10)

kidprofileId = driver.find_element(:id, "childPhotograph")
kidprofileId.click

#Child profile edit button
sleep(10)
driver.find_element(:class, "profileEditButton").click

#Typing the first name
sleep(5)
driver.find_element(:id, "kid_fname").clear
FnameId = driver.find_element(:id, "kid_fname")
FnameId.send_keys "SingiReddy"

#Typing the middle name
#sleep(5)
driver.find_element(:id, "kid_mname").clear
MnameId = driver.find_element(:id, "kid_mname")
MnameId.send_keys "Sravan"

#Typing the Lname
driver.find_element(:id, "kid_lname").clear
LnameId = driver.find_element(:id, "kid_lname")
LnameId.send_keys "Kumar"

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

#parent relatioship
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
P1PhoneId = driver.find_element(:id, "parents_0_info_phone_numbers_0_contact")
P1PhoneId.send_keys "555555555555555555"

#parent phone no.type
#sleep(10)
P1Phonetype_select = driver.find_element(:name, "parents[0][info][phone_numbers][0][type]")
P1phId = driver.find_element(:id, "parents_0_info_phone_numbers_0_type")
P1phId.send_keys "Mobile"

#parent phone2
driver.find_element(:id, "parents_0_info_phone_numbers_1_contact").clear
P1Phone2Id = driver.find_element(:id, "parents_0_info_phone_numbers_1_contact")
P1Phone2Id.send_keys "66666666666666666"

#parent phone no.type2
#sleep(10)
P1Phonetype2_select = driver.find_element(:name, "parents[0][info][phone_numbers][1][type]")
P1ph2Id = driver.find_element(:id, "parents_0_info_phone_numbers_1_type")
P1ph2Id.send_keys "Home"

#parent phone3
driver.find_element(:id, "parents_0_info_phone_numbers_2_contact").clear
P1Phone3Id = driver.find_element(:id, "parents_0_info_phone_numbers_2_contact")
P1Phone3Id.send_keys "7777777777777"

#parent phone no.type2
#sleep(10)
P1Phonetype3_select = driver.find_element(:name, "parents[0][info][phone_numbers][2][type]")
P1ph3Id = driver.find_element(:id, "parents_0_info_phone_numbers_2_type")
P1ph3Id.send_keys "Work"

#Save profile
#sleep(5)
#driver.find_element(:link, "Save profile").click

#Cancel details
#sleep(5)
#driver.find_element(:link, "Cancel").click

#Adding new parent
#sleep(5)
#driver.find_element(:link, "add new parent/guardian").click

/#parent2 relatioship(Optional)_
sleep(5)
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

 