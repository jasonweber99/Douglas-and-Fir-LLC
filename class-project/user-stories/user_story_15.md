# As a user, I would like to be able to see which authors are verified famous climbers so that I can tell which blog posts are credible.

## ID: 15
## Effort Points: 1
## Owner: Jason
## Feature branch name: f15-milestone4

## Assumptions/Preconditions
Blog feature has been created and databse has been seeded with users and blog posts

## Description
A user should see a checkmark next to a verified climber's name when viewing the list of blog posts and when viewing a blog post written by a verified climber.

## Acceptance Criteria

1. Checkmarks should be displayed next to the authors that are verified famous climbers on the blog index page.
2. A checkmark should be displayed next to the author if they a are verified famous climber on a blog post.
3. Checkmarks should be displayed next to the authors that are verified famous climbers on the blog search page.

## Tasks
1. Update DB up and seed scripts to include a verified bool column.
2. Regenerate DB C# classes.
3. Add checkmark image next to names if they're verified.

## Dependencies
User stories 1 and 4.

## Any notes written while implementing this story
Had to add third acceptance criteria after noticing that the blog search page is separate from the basic blog list.