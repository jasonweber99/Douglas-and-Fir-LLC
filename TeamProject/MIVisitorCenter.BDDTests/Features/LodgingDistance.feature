Feature: As a visitor to the site, I would like my hotel to be located near where I eat breakfast when creating an itinerary, so that I don't have to travel far.


Scenario: Itinerary builder chooses restaurant closest to lodging
	Given I am on the Itinerary Builder Page
	When I create an itinerary with 1 days
	Then a lodging option is generated for me
	And the restaurant chosen for breakfast will be the closest restaurant