		#Mozilla - File Upload
									#Chrome - Open
									#and for IE - Choose File to Upload

 #sleep(10)
#driver.find_element(:id, '5217606a59a2a5065e000001').send_keys('D:\images\s.jpg')
/#driver = webdriver.Firefox()


element = driver.find_element(:id, "document_attachment")
element = driver.find_element("File Upload")
#driver.findImageElement("D:\images\s.jpg")
element.send_keys("D:\images\s.jpg")/


#element = driver.find_element("File Upload")
#element = driver.find_element(:id, "document_attachment").send_keys("D:\images\s.jpg");
#driver.find_element(:id, "readTermsOfUse").click;
#driver.find_element(:name, "form_upload").submit;
 
 



#element = driver.find_element(:id, "document_attachment")
#element = driver.find_element("File Upload")
#driver.findImageElement("D:\images\s.jpg")
#element.send_keys("D:\images\s.jpg")




/#document_attachment


 									
sleep(5)
WinWaitActive("File Upload")
sleep(5)

 Send("D:\sravan\sravan\img\cute-boy12.jpg").click
 sleep(5)
 Send("{ENTER}")/
 



