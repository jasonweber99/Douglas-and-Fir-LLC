Feature: As a visitor to the site, I would like to plan an itinerary for more than two days.


Background: 
	Given the following businesses exist
	  | Id | Name        | Description  |
	  | 1  | Hiking      | Hiking Trail |
	  | 2  | Lodging     | Hotel        |
	  | 3  | Restaurant  | Restaurant   |
	  | 4  | Art Gallery | Gallery      |
	  | 5  | Winery      | Winery       |
	Given the following addresses exist
	  | Id | StreetAddress | City          | State | Zip   |
	  | 1  | 123 Main St   | Monmouth      | OR    | 97361 |
	  | 2  | 321 Main St   | Independence  | OR    | 97351 |
	Given the following categories exist
	  | Id | Name          |
	  | 1  | Hiking        |
	  | 2  | Lodging       |
	  | 3  | Restaurant    |
	  | 4  | Art Galleries |
	  | 5  | Wineries      |

Scenario: Create a seven day itinerary
	Given I am on the Itinerary Builder Page
	When I create an itinerary with 7 days
	Then I will see an itinerary with 7 days displayed on the page