# As a user I want to search for blog posts by keyword, date, or user so that I can find a post quickly.

## ID: 8
## Effort Points: 1
## Owner: John
## Feature branch name: f8-milestone4

## Assumptions/Preconditions
Blog feature has been implemented and seeded with posts, user accounts have been implemented and seeded with users

## Description
On the blog page, there are options to search for blog posts by keyword in the title and body, date range, and user. Results would show on a new page.

## Acceptance Criteria
1. If I enter keywords into the search box on the blog page and click "Search", then a list of blog posts containing the keyword will be displayed on a new page. 
2. If I enter a user's name into the search box on the blog page and click "Search", then a list of blog posts created by that user will be displayed on a new page.
3. If I enter in a date range on the blog page and click "Search", then a list of blog posts created within that date range will appear on a new page.

## Tasks
1. Add search feature mark-up to BlogPosts/Index
2. Create Results page
3. Create Results() method in BlogPostsController to complete functionality

## Dependencies
User story IDs 1, 4, 5

## Any notes written while implementing this story