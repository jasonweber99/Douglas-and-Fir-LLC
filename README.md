# Monmouth-Independence Visitor Center Website
The Monmouth-Independence Visitor Center Website will be a hub of information for visitors. There will be information about local businesses and attractions. Business owners will be able to update information about their businesses directly on the site. In addition, visitors will be able to use our itinerary-planning feature to plan visits to the area.

This website will serve as the senior capstone project for Douglas and Fir, LLC at Western Oregon University. The Monmouth-Independence Visitor Center currently does not have a web presence and we have been asked by the Executive Director of the Monmouth-Independence Chamber of Commerce to undertake this project.

[Vision Statement](https://github.com/jasonweber99/Douglas-and-Fir-LLC/blob/dev/diagrams/Vision_Statement.md)

## Contributors

### Team Members
* [Jason Weber](https://github.com/jasonweber99)
* [John Kirk III](https://github.com/jkirkiii19)
* [Kelby Evans](https://github.com/kelbyevans)
* [Quincey Freeman](https://github.com/quinceyfreeman)

### Project Advisor
* [Scot Morse](https://github.com/morses)

### Weekly Schedule
* Monday 9-10am: Advisor Meeting
* Tuesday 2-4pm: Team Meeting
* Thursday 3-5pm: Team Meeting

## Software Development Processes
* Disciplined Agile Delivery
* Scrum

## Technology Stack
* ASP.NET Core 3.1
* Bootstrap 4
* Microsoft Azure for WebApp and database deployment
* GitHub-Azure continuous deployment

## Coding Conventions
* [BEM](getbem.com/naming) naming convention for HTML/CSS
* General [C#](https://www.c-sharpcorner.com/UploadFile/8a67c0/C-Sharp-coding-standards-and-naming-conventions/) naming conventions
* Files and folders should be in PascalCase
* All models should be named in PascalCase
  * Models with corresponding database entities should be auto-generated
* View model names: {ViewName}ViewModel.cs
* Primary keys should always be named "ID"
* Database, entity, and attribute names should all be in PascalCase
* When possible, any additions to Models should be done by creating a partial class in a new file named {ModelName}Partial
* All local databases should be named according to the [ERD]()

## Git Conventions
* All merges to dev should be done through pull requests, to be reviewed by [Jason Weber](https://github.com/jasonweber99)
* Merges to main will be done at the end of the sprint review meeting
* Don't commit code that doesn't compile
* Feature branches should be named f{ID}
