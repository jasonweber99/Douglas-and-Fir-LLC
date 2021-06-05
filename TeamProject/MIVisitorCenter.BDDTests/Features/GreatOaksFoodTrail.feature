Feature: As a visitor to the site, I would like to see a page about the Willamette River Water Trail, so I can discover all the available activities on the trail.

Scenario: Open food trail page
	Given that I am on a desktop computer or mobile device
	When I navigate to the food trail page
	Then I will see links for each major section to the side

Scenario: Select additional page
	Given that I am on a desktop computer or mobile device
	When I click one of the section links
	Then that section's page will be dispalyed

Scenario: Open food trail page on mobile
	Given I am on a mobile device
	When I navigate to the food trail page
	Then I will not have to scroll horizontally to see page content
