Feature: Login

	To use application resources
	As a system user
	I would like to log in with my account

	Scenario: Log in a valid user
			Given I am on the log in page
			And I fill in "Login" with "12345"
			And I fill in "Senha" with "12345678"
			When I press "Entrar" button
			Then I will go to next page
			