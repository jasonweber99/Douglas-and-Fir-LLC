Feature: As an admin, I would like to be able to add a business to the website, so it can be browsed to or searched for on the website. 


Background: 
	Given I am logged in with administrator privileges
	And the admin enters valid values for a business

Scenario: Add a business to the website
	When the admin creates the business
	Then the business will be added to the database
	And the business will be displayed on the index page

Scenario: A business with an new address will create an address
	Given the address doesn't match one in the database
	When the admin creates the business
	Then the address will be added to the database

Scenario: A business with an existing address will not create an address
	Given the address matches one in the database
	When the admin creates the business
	Then the address from the database will be used
	And a new address won't be created