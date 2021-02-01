# As a visitor I want to filter expeditions so I can view expeditions by season, year, termination reason and trekking agency 

## ID: 7
## Effort Points: 2
## Owner: Quincey Freeman
## Feature branch name: f7-milestone4

## Assumptions/Preconditions
Expedition pages for each peak has already been completed in a previous sprint.

## Description
The stakeholders want to be able to easily filter expeditions on specified peaks. This is to help users to more readily find a specific expedition they have in mind for a peak. The user should be able to view all the expeditions on a peak they select and should group expeditions based on the filters they specify. If they had to go through every expedition to find all expeditions taken in a given season, they may lose track of some or may decide to not use the site altogether. They have decided to place the feature on each of the peak pages with expeditions. Here are some of the details:

1. Filters for season, year, termination reason, trekking agency available for each peak page that has expeditions
2. Filtering by season groups expeditions by season (Spring, Summer, Autumn, Winter)
3. Filtering by year lists expeditions by most recent
4. Filtering by termination reason groups expeditions by successful and unsuccessful expeditions
5. Filtering by trekking agency groups expeditions taken under each agency

__Include links to modeling diagrams or anything else referenced or needed to complete this story.__

## Acceptance Criteria
1. If a user visits a peak page then they should be able to access filtering options on expeditions
2. If a user filters by season then the page should update with expeditions grouped together by seasons.
3. If a user filters by year then the page should update with expeditions listed by the most recent expedition on the peak.
4. If a user filters by termination reason then the page should update with expeditions grouped into two categories (successful expeditions and unsuccessful expeditions).
5. If a user filters by trekking agency then the page should update with expeditions grouped together by agencies.

## Tasks
1. Build filter options in Peak.cshtml
2. Update Peak method in HomeController.cs to accept user input for filters
3. Implement code to have method return expeditions given selected filter
4. Update Peak.cshtml to group expeditions based on user input

## Dependencies
None

## Any notes written while implementing this story