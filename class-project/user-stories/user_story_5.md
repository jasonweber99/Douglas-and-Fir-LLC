# As a user I would like to see an attractive home page with dynamic information including pictures of popular peaks and recent expeditions

## ID: 5
## Effort Points: 2
## Owner: Kelby
## Feature branch name: f5-milestone4

## Assumptions/Preconditions
The front page needs to be built and the database needs to be filled with expeditions.

## Description
The front page is the first thing that will be seen by visitors to the website. It is important that it looks nice with the features of the site apparent. This will draw users into the site and make them curious to explore it. The most recent climbs will be shown to inform the user of current expeditions. The front page should include:

1. Pictures of popular peaks in a slideshow with short descriptions of each (the exact peaks don't matter, just an assortment of well known peaks).
2. Table of 5 most recent expeditions, with the most recent at the top of the list. Information for each expedition should be: start date, peak, height, trekking agency, and termination reason.
3. Links to each of the websites features that stand out on the page.
4. Add a monochromatic color palette to the site—nothing too loud or distracting.

## Acceptance Criteria
1. If a user loads the main page, they will see a slideshow of peaks with descriptions for each one.
2. If a user is looking for the features of the website, then the links will be apparent to them in the nav bar and in an obvious spot on the page. These links will send the user to the correct page.
3. If a user wants to see recent expeditions, the start date, peak, height, trekking agency, and termination reason of the 5 most recent expeditions will be conveniently provided for them on the front page.
4. If a new expedition is added to the database, then it will be displayed at the top of the table on the home page.

## Tasks
1. Add a Bootstrap carousel to the front page to replace the static picture that currently exists.
2. Find pictures to add to the carousel and add short descriptions to each of them.
3. Edit the Index action in HomeController.cs to send expeditions from the database to Index.cshtml, making sure to include peaks and trekking agency.
4. Create a table showing the 5 most recent expeditions with the information specified above.
5. Add links to the page for each of the main features.
6. Choose a color scheme for the pages and implement it in Index.cshtml and _layout.cshtml.
7. Use Bootstrap formatting to display each of these three main features in congruence.

## Dependencies
User story 1, 2, 3, and 4.

## Any notes written while implementing this story