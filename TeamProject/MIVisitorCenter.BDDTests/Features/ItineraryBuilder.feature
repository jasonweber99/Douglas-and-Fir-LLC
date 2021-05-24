Feature: As a visitor to the site, I would like to plan an itinerary for more than two days.


Scenario: Create a seven day itinerary
	Given I am on the Itinerary Builder Page
	When I create an itinerary with 7 days
	Then I will see an itinerary with 7 days displayed on the page

Scenario: Users interests are present in itinerary
	Given I am on the Itinerary Builder Page
	And I select 'hiking' as an interest
	When I create an itinerary with 1 days
	Then I will see an itinerary that contains 'Hiking'

Scenario: Itineraries don't contain duplicate activities
	Given I am on the Itinerary Builder Page
	When I create an itinerary with 1 days
	Then the generated activities will be unique for that day

Scenario: Itineraries don't contain duplicate restaurants
	Given I am on the Itinerary Builder Page
	When I create an itinerary with 1 days
	Then the generated restaurants will be unique for that day