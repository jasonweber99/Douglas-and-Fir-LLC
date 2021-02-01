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

1. If I navigate to the blog post page, then I will be able to see checkmarks next to the authors that are verified famous climbers.
2. If I navigate to a blog post that is written by a verified user, I should see a checkmark by their name.

## Tasks
1. Update DB up and seed scripts to include a verified bool column.
2. Regenerate DB C# classes.
3. Add checkmark image next to names if they're verified.

## Dependencies
User stories 1 and 4.

## Any notes written while implementing this story