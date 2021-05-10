Feature: Feature: As an admin, I would like to be able to add a business to the website, so it can be browsed to or searched for on the website. 


Background: 
	Given a user is logged in
	And the user account has administrator privileges

Scenario: View the Content Manage Page
    Given Start to type your Given step here

Scenario: Update a text box component
    Given the text box component exists in the database
	When the components are displayed on the manage page
	Then the admin can submit a form to update the component content
	And the content will be displayed 


Scenario: Add images to a gallery component
	Given the gallery component exists in the database
	When the components are displayed on the manage page
	Then the admin can submit a form to add images to the component
    And the stored images will be displayed

Scenario: Remove images from a gallery component
	Given the gallery component exists in the database
	When the components are displayed on the manage page
	Then the admin can select images to delete
	And the images will not be stored or shown