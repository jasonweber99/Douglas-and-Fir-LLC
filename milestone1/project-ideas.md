# Project Ideas

## Zip Code Assessor

This webapp would provide an analysis and overview of data related to zip codes around the country. By utilizing US Census records and other data, it will display and collate relevant information to prospective home buyers or residents of a given zip code, such as crime rates, school ratings, property values, and available public services. Potential features include comparing multiple locations side-by-side, using an algorithm to compute and assign proprietary ratings based on raw data, displaying maps of the chosen area(s), comparing chosen area(s) to those nearby, and providing links to relevant local resources and services.


## Community Media Playlist

This project would allow a group of friends to vote on a movie to watch. This would be done by pulling data using the Movie Database API and storing the movies that were voted on and making that list available to each person. The movies would be ranked by the number of positive votes they received. This could be done with movies and TV shows at home for a movie night, or with movies currently in theaters. This idea could also be adapted to work with a playlist of songs based on Spotify API for use in businesses like bars, restaurants, and gyms or for personal use at parties and other events.


## Invasive Species Tracker

This web app would facilitate the crowd-sourced tracking of invasive plant species in Oregon. Invasive plant species are non-native plants that will cause harm to ecosystems should they be left to spread. Our project would allow users to upload photos of suspected invasive species along with the location spotted. This picture would then be checked against our Custom Vision model on Azure Cognitive Services to determine if the plant in question is invasive. A couple of additional features include showing info about the plant whether it's invasive or not and allowing the tracking of invasive species in different states.


## COVID-19 Dashboard

This web app would let users view statistics on the novel coronavirus. Initial vision for this web app is to have a minialistic user interface that gives the users statistics when entering the application. This image  gives a basic idea for the homepage of the web app. The user could pin certain regions that can provide quick stats and link to more detailed information. There would also be a map that users can get information on different states. Depending on the chosen region, the data could be presented both numeically and visually using graphs.

<img src="https://i.imgur.com/OBJWq6K.png"/>

While currently the initial idea is to display information on the coronavirus for the United States, we can add functionality to expand information on the rest of the world.

### Some Features For Dashboard
- User can view stats for United States
- Users can create accounts to track specific regions they are interested in
- View current prevention tips to slow the spread
- Users can view news articles pertaining to COVID either generally or for specific regions when accessed
- Visualize data with charts
- Possibly simulate future conditions given certain parameters

### Getting data and News
The current idea is to start with a smaller set of data by getting information for the United States. The future iteration could add other regions. 

With a focus on the United States, a useful API for getting state information can be found at [The COVID Tracking Project](https://covidtracking.com/data/api "Link to API access information").

As for the news feature, we can access news articles from a number of media outlet APIs. Here is just some ideas for where we can get news articles from

- [Associated Press](https://developer.ap.org "AP")
- [New York Times](https://developer.nytimes.com "NYTimes")
- [Reuters](https://www.reutersagency.com/en/platforms/api-feeds/ "Reuters")