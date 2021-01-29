Project Inception Template
=====================================

## Summary of Our Approach to Software Development

    What processes are we following? ==> Disciplined Agile Delivery, Scrum, ...  What are we choosing to do and at what level of detail or extent?

## Initial Vision Discussion with Stakeholders

    The Monmouth Chamber of Commerce and Visitor's Center would like an updated and more feature-rich web presence. They would like all of the current functionality of their current website, [Explore Polk County](https://www.explorepolkcounty.org/), with additional features, both interactive and otherwise.

    Current features of the website include links to relevant social media posts regarding Polk County tourism, lists of resources to local attractions and events, information on outdoor recreation available in the area and the Willamette River Water Trail specifically, and links to local places to stay and eat.

### List of Stakeholders and their Positions
    
    Kathleen Mason, Executive Director of the Monmouth Independence Chamber of Commerce, is the main stakeholder for our project. She will be overseeing our progress and be the final arbiter of the features and content of the project. 

## Initial Requirements Elaboration and Elicitation

### Elicitation Questions
#### Elicitation
    1. Is the goal or outcome well defined?  Does it make sense?
        The stakeholder is looking for a new web portal to represent the Monmouth and Independence area's tourism interests. She mentioned retaining all of the features and functionality of the current website with additional features relevant to the tourism industry.
    2. What is not clear from the given description?
        Additional features were requested but not yet specified; the stakeholder offered room for creativity on the part of the developers to offer features that fit the vision of the project.
    3. How about scope?  Is it clear what is included and what isn't?
        The scope of the project is well defined, thanks to the geographic boundaries of the subject matter and the current extant website that we would be replacing. Further inquiry is required to determine if all businesses in the area should be represented within the project or if the information should be limited to current members of the chamber of commerce.
    4. What do you not understand?
        * Technical domain knowledge
            The team has experience with the majority of the planned technology stack, with some additional familiarity with relevant APIs. Opportunities for further learning include JavaScript libraries and ASP.NET Core Identities.
        * Business domain knowledge
            More understanding of the chamber of commerce model will be required, as well as popular and effective design methodologies in respect to tourism.
    5. Is there something missing?
        Additional details on any specific feature requests not currently offered by the Explore Polk County website.
    6. Get answers to these questions.

#### Analysis
Go through all the information gathered during the previous round of elicitation.  

    1. For each attribute, term, entity, relationship, activity ... precisely determine its bounds, limitations, types and constraints in both form and function.  Write them down.
    2. Do they work together or are there some conflicting requirements, specifications or behaviors?
    3. Have you discovered if something is missing?  
    4. Return to Elicitation activities if unanswered questions remain.

### Elicitation Interviews
    Notes from meeting with Kathleen, 1/26:
    * Expressed desire to recreate existing website, keeping the functionality and "open feel" of the design.
    * Reducing the scope of the website from all of Polk County to specifically the Monmouth/Indpendence area.
    * Potential for an e-commerce aspect of the site for sale of souvenirs and branded merchandise.
    * Google Maps integration requested
    * Administration portal for site maintenance, potential webstore updates, and dynamic content.
    * Multiple levels of users; Admin, Intern, chamber member?

### Other Elicitation Activities?
    Further elicitation will consist of additional meetings with the stakeholder as well as market research consisting of analyzing similar visitor's center and tourism board web presences.

## List of Needs and Features
    1. "Open feel" design of website
        * Simple, clutter-free, content-forward design of pages
        * Minimalist, consistent nav-bar with drop-down menus
    2. Easy-to-access information on local businesses and attractions
        * Categorized directory of businesses
        * Unique pages for chamber members displaying contact information, hours of operation, and social media posts
        * Map display showing businesses and places of interest
    3. Dynamic list of upcoming events
        * Calendar populated with events
        * Ability for businesses to submit content for display
    4. Trip planning resources
        * Itinerary-planning feature with examples
        * Directions for nearby businesses and attractions route generation based on Google Maps integration
    5. Ability for users to buy merchandise
        * Easy-to-navigate webstore
        * Ability to update inventory offerings

## Initial Modeling
    Diagrams

### Use Case Diagrams
    Diagrams

### Sequence Diagrams

### Other Modeling
    Diagrams, UI wireframes, page flows, ...

## Identify Non-Functional Requirements
* Optimization for mobile devices

## Identify Functional Requirements (In User Story Format)

E: Epic  
U: User Story  
T: Task  
1. [E] As a visitor to the site I would like to see a clean, modern home page with dynamic content and relevant information so that I can find the resources I need quickly.
   1. [U] As a user I want to experience an intuitive user interface that introduces me to the website and its features.
   2. [U] As a user I want to be able to navigate the website with a minimalistic, consistent navigation bar including drop-down menus so I can find the pages I'm looking for easily.
   3. [U] As a user I want to view a persistent design and style between all pages on the website so that the browsing experience feels consistent.
   4. [U] As a user visiting the home page, I want to see dynamic media showcasing what Monmouth and Independence has to offer so that I can can be informed about the area.
2. [E] As a visitor to the site I would like to view local businesses by browsing categories or searching so that I can find relevant information easily.
3. [E] As a visitor to the site I would like to view information about local attractions and recreational opportunities by browsing categories or searching so that I can learn about what the area has to offer.
4. [E] As a visitor to the site I want to be able to view a map of the area populated with businesses and attractions so that I can visualize what is in the area.
5. [E] As a visitor to the site I want to be abreast of upcoming events in the area by viewing a dynamic calander that can be populated by registered users of the site or administrators.
6. [E] As a visitor to the site I would like to be able to plan a trip to the area by building an itinerary or viewing example itineraries so that I can maximize my time in the area.
7. [E] As a visitor to the site I would like to be able to purchase local merchandise so I can remember my time in Monmouth and Independence.
8. [E] As a business owner I want to be able to register an account and have the ability to update my business's page by adding events, media, and information.
9. [E] As an administrator to the site I want to be able to update and moderate content of both the website and the webstore.

## Initial Architecture Envisioning
    Diagrams and drawings, lists of components

## Agile Data Modeling
    Diagrams, SQL modeling (dbdiagram.io), UML diagrams

## Timeline and Release Plan
    Sprint 1: February 9th - February 22nd
    Sprint 2: February 23rd - March 8th
    Sprint 3: March 30th - April 12th
    Sprint 4: April 13th - April 26th
    Sprint 5: April 27th - May 10th
    Sprint 6: May 11th - May 24th
    Sprint 7: May 25th - June 4th

    Final release: May 27th