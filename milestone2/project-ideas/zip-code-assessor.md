# Zip Code Assessor Project Idea
## Questions
### Short Explanation
        This webapp would provide an analysis and overview of data from zip codes across the United States. By utilizing US Census records among other private and government data this project would display collated and relevant information about a particular zip code including crime rates, school ratings, property values, local tax information, and available public services. The user base would include potential home buyers, people looking to relocate, or individuals just wanting to see some quantitative information on a zip code.

### What is new/original about this idea? What are related websites/apps? (Be able to answer the question: isn’t somebody already doing this?) 
        This web app would go into much greater detail about each zip code than existing sites. Each zipcode could be compared with others in many different categories or be given a grade based on statistics that are important to the user. One related website is unitedstateszipcodes.org, which ranks zip codes by several categories, but there is no way to compare two zipcodes and there isnt an easy way to get zipcode statistics from a map view. Another similar website is niche.com, which also ranks cities/zipcodes in a limited number of categories and gives each neighborhood a grade ranking.


### Why is this idea worth doing? Why is it useful and not boring? 
        This project would bring a ton of data together to allow the user to find out information about zip codes to determine a place to live, which school to attend, or to discover informaiton about the user's current location. The user could personalize the search and ranking based on the statistics that are important to them. 

### What are a few major features?
    * Side-by-side zip code comparison
    * Map display with various informational overlays
    * See how a zip code ranks among others in its county, state, and nationally.
    * See top-rated zip codes in a given state or area based on given criteria
    * Provide links to local resources and services

### What resources will be required for you to complete this project that are not already included in the class. i.e. you already have the Microsoft stack, server, database so what else would you need? Additional API’s, frameworks or platforms you’ll need to use.
    * [School Statistics Datasets](https://nces.ed.gov/datalab/index.aspx) for school ratings.
    * [Zillow API](https://www.zillow.com/howto/api/APIOverview.htm) for property values.
    * [Individual Income IRS Tax Stats](https://www.irs.gov/statistics/soi-tax-stats-individual-income-tax-statistics-zip-code-data-soi) for local tax info.
    * API or dataset for crime statistics.
    * API or dataset for public services.
    * [JS library](https://hpneo.dev/gmaps/) for interactive maps.

### What algorithmic content is there in this project? i.e. what algorithm(s) will you have to develop or implement in order to do something central to your project idea? (Remember, this isn’t just a software engineering course, it is your CS degree capstone course!)
    * Proprietary ratings for a given zip code in one of several categories will be calculated from raw data imported from APIs that is then weighted and coalesced into a singular quantitative value
    * Ranking and displaying 'top 10' lists of zip codes based on a variety of available data

### Rate the topic with a difficulty rating of 1-10. One being supremely easy to implement (not necessarily short though). Ten would require the best CS students using lots of what they learned in their CS degree, plus additional independent learning, to complete successfully.
        While it may not draw on some of our upper division CS classes, keeping track of multiple APIs and data sets as well as learning a new JS library would still prove to be more difficult than it is easy. It is for this reason that we rate this topic a 6 or 7 out of 10 on difficulty.