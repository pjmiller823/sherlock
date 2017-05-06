# README
This is my Sherlock app, a theoretical home selling web application modeled off of Zillow. It is deployed at 'https://pjm-sherlock.herokuapp.com/'.

### TECHNICAL INFORMATION:
- Rails version 5.0.2
- Ruby version 2.4.0

### PURPOSE:

This project began as an assignment for The Iron Yard and was updated on and off over the course of three weeks. The initial goal was to use Rails framework (which we had just learned) to design and build a functional clone of Zillow from the ground up. We were required to start with building a static HTML design and then make it functional. Throughout the next three weeks we would occasionally return to this project and add new features based on what we had learned.

### FEATURES:
- Ability to view all homes via an index.
- Ability to create, edit, and delete homes. All require login and edit and delete are only available to the original creator of the home.
- Search function AJAX enabled for dynamic searching.
- Pagination through Kaminari.
- Omniauth used for Github authentication.
- Ability to view different sized pictures of the homes via modals (jquery + bootstrap + shrine).
- Ability to 'favorite' a home by clicking on the hearts. Favorites are tracked and are related to the users.
- Emails are sent out on signup and to a user when the home they posted is favorited by another user.
- Clicking on the square footage will allow you to see the size of the home in square meters.

### Demo
Landing Page:

<img src="https://raw.githubusercontent.com/pjmiller823/sherlock/master/docs/sherlock-homepage-view.png" width="200">

Index Page:

<img src="https://raw.githubusercontent.com/pjmiller823/sherlock/master/docs/sherlock-index-view.png" width="250">

Individual Home 'Show' Page:

<img src="https://raw.githubusercontent.com/pjmiller823/sherlock/master/docs/sherlock-show-view.png" width="250">
