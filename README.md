### Rails DeCal Project 2

##Group Meet

Team Members: Ingrid Hong, Mandy Huang, Melissa Pangilinan

Demo Link: 


Idea: An application where users can create an event and other users who want to go can go with them lets the creator of the event know by leaving a comment.


Models and Description:

User

- has name, email, events he/she created, events he/she is going to
- can make an Event, or “go to” an Event

Event

- has title, description, location, and time. Each Event has a Comments Model

Comments

- Has a list of users, whether he/she is attending, and optional comments.


Features:

- Users can log in, create events, and join events
- Users can meet up with people with similar interest. For example, a user wants to watch Big Hero 6 but has no one to go with, others in a similar situation can join.
- Discover all the events that are happening to see if there’s any interesting events.
- emailing when events get updated *


Division of Labor:

- Ingrid: Make views and make it pretty, use a custom gem
- Mandy: Make Controllers and routes, validations, writeup
- Melissa: Make the 3 models with seed file, test files, deploy to heroku


