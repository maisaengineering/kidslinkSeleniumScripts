require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "https://kl-json.herokuapp.com/home/index"
driver.manage().window().maximize()

#*******************************************************************#
###################### 1st Presbyterian Preschool ###################
#*******************************************************************#
sleep(2)
driver.find_element(:xpath, "//*[contains(text(),'Apply the  1st Presbyterian Preschool for season 2015-2016')]").click
sleep(3)
driver.find_element(:xpath, "(//span[@id='rwkExistingText'])[2]").click

sleep(2)
driver.find_element(:id, "profile_univ__fname").clear
FnameId = driver.find_element(:id, "profile_univ__fname")
FnameId.send_keys "raju"
#
sleep(5)
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
relation_select = driver.find_element(:name, "profile[seas][][age_group_and_school_days]")
fstclassId = driver.find_element(:id, "profile_seas__age_group_and_school_days")
fstclassId.send_keys "m/w"
#
relation_select = driver.find_element(:name, "profile[seas][][secondary_choice_of_class_days]")
scndclassId = driver.find_element(:id, "profile_seas__secondary_choice_of_class_days")
scndclassId.send_keys "T"
#

driver.find_element(:id, "profile_univ__address1").clear
add1Id = driver.find_element(:id, "profile_univ__address1")
add1Id.send_keys "this is very imp"
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
#pppppppp
relation_select = driver.find_element(:name, "profile[parent][0][child_relationship]")
scndclassId = driver.find_element(:id, "profile_parent_0_child_relationship")
scndclassId.send_keys "f"
#

driver.find_element(:id, "profile_univ__zip").clear
zipId = driver.find_element(:id, "profile_univ__zip")
zipId.send_keys "1p"
#

driver.find_element(:id, "profile_parent_0_fname").clear
PFnameId = driver.find_element(:id, "profile_parent_0_fname")
PFnameId.send_keys "man"
#

driver.find_element(:id, "profile_parent_0_lname").clear
PLnameId = driver.find_element(:id, "profile_parent_0_lname")
PLnameId.send_keys "super"
##########################################################################################################################################
sleep(2)
emailId = driver.find_element(:id, "profile_parent_0_email")
emailId.send_keys "man10@test.com"


#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1").clear
P1PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone1")
P1PhoneId.send_keys "55555555555"

#parent phone no.type
#sleep(5)
P1Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P1phId = driver.find_element(:id, "profile_parent_0_phone1_type")
P1phId.send_keys "Mobile"


#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2").clear
P2PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone2")
P2PhoneId.send_keys "5598997979877979"

#parent phone no.type
#sleep(5)
P2Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P2phId = driver.find_element(:id, "profile_parent_0_phone2_type")
P2phId.send_keys "h"


#parent phone number
driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3").clear
P3PhoneId = driver.find_element(:id, "profile_parent_attributes___phone_numbers__contactphone3")
P3PhoneId.send_keys "5546644646464"

#parent phone no.type
#sleep(5)
P3Phonetype_select = driver.find_element(:name, "profile[parent][0][phone1][type]")
P3phId = driver.find_element(:id, "profile_parent_0_phone3_type")
P3phId.send_keys "w"

##########
sleep(2)
chkbox = driver.find_element(:name, "profile[seas][][class_listing_auth_yes]")
classYesId = driver.find_element(:id, "profile_seas__class_listing_auth_yes")
classYesId.click
#
sleep(2)
chkbox = driver.find_element(:name, "profile[seas][][class_listing_auth_no]")
classNoId = driver.find_element(:id, "profile_seas__class_listing_auth_no")
classNoId.click
#
sleep(2)
chkbox = driver.find_element(:name, "profile[seas][][org_listing_auth_yes]")
schoolYesId = driver.find_element(:id, "profile_seas__org_listing_auth_yes")
schoolYesId.click
#
sleep(2)
chkbox = driver.find_element(:name, "profile[seas][][org_listing_auth_no]")
schoolNoId = driver.find_element(:id, "profile_seas__org_listing_auth_no")
schoolNoId.click
#
media_select = driver.find_element(:name, "profile[seas][][media_release_perm]")
mediaId = driver.find_element(:id, "profile_seas__media_release_perm")
mediaId.send_keys "y"
#
sleep(2)
chkbox = driver.find_element(:name, "profile[seas][][terms]")
signId = driver.find_element(:id, "profile_seas__terms")
signId.click
#

sleep(2)
Submit2 = driver.find_element(:name, "commit")
Submit2.click
#

sleep(5)
type_select = driver.find_element(:name, "parent_profile_id")
IamId = driver.find_element(:id, "parent_profile_id")
IamId.send_keys "Father : man super"
#password
sleep(5)
driver.find_element(:class, "standardForm").click

sleep(5)
passId = driver.find_element(:name, "user[password]")
passId.click
sleep(5)
passId = driver.find_element(:id, "user_password")
passId.send_keys "123456"
#re enter pass
sleep(5)
RepassId = driver.find_element(:id, "user_password_confirmation")
RepassId.send_keys "123456"

sleep(2)
Submit3 = driver.find_element(:name, "commit")
Submit3.click





#Billing start
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
#
sleep(2)
chkbox = driver.find_element(:name, "privacy_policy1")
AckId = driver.find_element(:id, "privacy_policy1")
AckId.click

#
sleep(2)
Submit4 = driver.find_element(:name, "commit")
Submit4.click
#

sleep(2)
driver.find_element(:link, "Continue to the KidsLink dashboard").click()
#






