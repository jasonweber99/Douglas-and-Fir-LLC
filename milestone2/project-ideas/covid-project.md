# Covid-19 Dashboard

## About this project
This web app would let users view statistics on the novel coronavirus. Initial vision for this web app is to have a minialistic user interface that gives the users statistics when entering the application. This image gives a basic idea for the homepage of the web app. The user could pin certain regions that can provide quick stats and link to more detailed information. There would also be a map that users can get information on different states. Depending on the chosen region, the data could be presented both numeically and visually using graphs.


# Here is an example of how the web app could be

<img src="https://i.imgur.com/LGXt7ax.png"/>

# Topics
## What is new/original about this idea? What are related websites/apps?
>There are websites out there such as [COVID-19 Dashboard by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University (JHU)](https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6), [CDC COVID Data Tracker](https://covid.cdc.gov/covid-data-tracker/#cases_casesper100klast7days) as well as searching Google. The idea behind this project is to be able to view aggregate data on the virus, track specific regions as well as display news depending on the data being presented. While this can be done by managing multiple sources for the information that a user is seeking, this solves the shuffling of tabs by having all the information that a user needs in one place.

## Why is this idea worth doing? Why is it useful and not boring?
> The idea is worth doing because the website provides relavent information that can be easily accessible to any user that visits. The website is useful because it provides information from many sources condensed into one place so the user does not need to visit multiple sites to get pieces of information such as statistics or articles pertaining to a certain region. It is also not boring because of how current the information that is presented on the site is updated.

## Features
    - Statistics for various regions
        - United States Overall
        - States
        - Counties for each state
    - Users can create an account to track certain regions
    - Display current prevention tips from health authorities
    - Display new articles on COVID
        - General articles that cover the virus
        - Region specific (article that discuss a certain state)
    - Visualize data with charts
    - Possibly simulate future conditions given certain parameters
        - Ex. change in positive test rate from prior months
    
## Resources
> This project will require many different APIs to collect data on COVID for the United States as well as state specific data.

### API
* [Covid Tracking Project](https://covidtracking.com/data/api)
* [New York Times API](https://developer.nytimes.com/apis)
* [Guardian API](https://open-platform.theguardian.com)
* [CDC Vaccine API](https://data.cdc.gov/Vaccinations/COVID-19-Vaccine-Distribution-Allocations-by-Juris/saz5-9hgg)
* ...

### Platform
* [Figma](https://www.figma.com)
    * Used for prototyping and wireframing

## What algorithmic content is there in this project?
> There are a couple different algorithmic components that this project can incorporate. Some implementations could include:

    - Simulate future conditions using past data that has been collected. This could include looking at how each region 
        -"With current trends, we can expect these statistics"
    - Compare how a specific region is handling Covid compared to neighboring regions and the United States overall

## Rate the topic with a difficulty rating of 1-10
> This project idea would likely fall into the 6-8 range. This project includes displaying a substantial amaount of information pulled from various APIs (getting state data from the Covid Tracking Project, vaccine data from the CDC API and news from different media APIs). This project also would need to use different JavaScript libraries for displaying the data in charts/graphs as well as having an interactive map to view more detailed statistics. The algorithmic component would also add to the difficulty by determining the best way to find possible future statistics given past data.