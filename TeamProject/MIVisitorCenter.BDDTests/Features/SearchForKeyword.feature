Feature: As a visitor to the site, I would like to search for a business by keywords in the description, so I can find the business I am looking for. 


Background: 
	Given I am on any page
	And I enter three or more characters in the search bar

Scenario: Search for keyword contained in a business' description
	When the search keyword is contained in a business' description
	Then the business will be displayed in the search results

Scenario: Search for keyword that is included in multiple business properties
	When the search keyword is contained in any combination of a business' name, description, or category name
	Then the business will only be displayed once