require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

@selenium

Given (/^I am on the log in page$/) do
	driver.get('http://localhost:3000/')
end

And (/^I fill in "Login" with "123456"$/) do
	login = driver.find_element(:name, 'login')
	login.send_keys "123456"
end

And (/^I fill in "Senha" with "12345678"$/) do
	senha = driver.find_element(:name, 'password')
	senha.send_keys "12345678"
end

When (/^I press "Entrar" button$/) do
	entrar = driver.find_element(:name, 'commit')
	entrar.click
end

Then (/^I login$/) do
	driver.get('http://localhost:3000/users')
end
