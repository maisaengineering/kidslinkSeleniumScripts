require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox
#Loading the assertselenium URL
driver.navigate.to "https://kl-json.herokuapp.com"
driver.manage().window().maximize()




puts "Forgot me password?..."
sleep 2
driver.find_element(:link, "Forgot your password?").click
puts "without enter email....showing error message..."
sleep 3.0
driver.find_element(:name, "commit").click
puts "Enter correct email....showing success message...."
sleep 10.0
driver.find_element(:id, "user_email").send_keys "qasravan547+a48@gmail.com"
sleep 2.0
driver.find_element(:name, "commit").click
sleep(5)
driver.find_element(:css, "img[alt='Logo']").click





