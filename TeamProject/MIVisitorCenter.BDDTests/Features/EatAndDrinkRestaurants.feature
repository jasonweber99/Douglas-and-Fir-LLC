Feature: As a visitor to the site, I would like to see a more organized list of businesses on the eat and drink page, so I can easily find the restaurant I am looking for.

Background: 
	Given that their are restaurants in the database

Scenario: Open eat and drink page
	When I navigate to the Eat and Drink page
	Then I will see I button for displaying filtering options
	And all restaurants will be displayed in a table

Scenario: Select filter restaurants button
	When I click the "Filter by Restaurant Type" button
	Then checkboxes with filtering options will be displayed

Scenario: Filter restaurants
	Given I am on the Eat and Drink page
	And I have clciked the "Filter by Restaurant Type" button
	When I select one or more restaurant categories
	And click the filter button
	Then the restaurant table will populate with only restaurants from the selected categories

Scenario: More than five businesses
	Given I am on the Eat and Drink page
	When there are more than five business in a table
	Then The table will be in a scrollbox