Feature: As a business owner, I would like to update information about my business, so I can keep the information up to date.


Background: 
	Given I am logged in as a business owner
	And the business owner enters valid values for their business

Scenario: Edit a current business
	When the business owner makes changes to the business
	Then the business will be updated in the database
	And the updated information will display on the business page

Scenario: A business with an new address will create an address
	Given the address doesn't match one in the database
	When the business owner saves the changes to the business
	Then the address will be added to the database

Scenario: A business with an existing address will not create an address
	Given the address matches one in the database
	When the business owner saves the changes to the business
	Then the address from the database will be used
	And a new address won't be created

Scenario: A business owner adds hours of operation to their business
	Given the hours of operation are edited
	When the business owner saves the changes to the business
	Then the hours of operation will be saved to the database
	And the hours of operation will be displayed on the business page
