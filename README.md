# techCore: Growing the tech community

### Find - Learn - Connect - Share

![alt text](/app/assets/images/techcore-logo.png "techCore")

See the deployed project here: https://vantechcore.herokuapp.com/

## Preamble
Given the task of creating a Meetup clone exclusively for tech companies, this project ('techCore') is a collaborative effort between six junior full stack developers. With an initial timeline of two days, our focus was to implement critical features before those less important. We learned valuable skills including project planning, git workflow, code review, debugging and team communication.

## Features
- Project TechCore allows companies to create an organization page, which they can use to advertise their events.
- Visitors to the site can see a list of all published companies page, and perform different search methods to identify companies that most interest them.
- All organization events are centralized on a calendar and events listing page.
- The app also features a news page, pulling tech stories from various sources through an API.
- Admins moderate organizations and users through an admin panel. Instructions to test the app as an admin are in the seed file.

## Screenshots
![TechCore App Screen Capture Home](/public/screenshot-1.jpg)
Home Page which indexes organizations and displays them on Google Map.

![TechCore App Screen Capture Events](/public/screenshot-3.jpg)
Events Page which indexes and displays upcoming events on a calendar.

![TechCore App Screen Capture News](/public/screenshot-5.jpg)
New Page which pulls tech stories from various external sources.

## Setup
```
Run the following commands in the project directory:

$ bundle
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s

Open on localhost:3000
```

## Technologies used
- Back-end: Ruby on Rails
- Front-end: Bootstrap, Javascript, jQuery, HTML5, CSS, Sass
- Database: PostgreSQL, Active Record
- Other technologies: Google Maps API, News API, Full Calendar

## Team Members
* Jack
* Rina
* Shaun
* Brooklin
* Gustavo
* Wellington

## Personal Reflection
* I am very proud of the work we are able to accomplish in such a short time frame. There were many features that we wanted to implement, but we knew we needed to build the most crucial features first. We sat down to plan our Entity Relationship Diagram first, and after running `rails scaffold` for our models we already had a working application within a few hours.
* This was my first group coding project and I learned a lot about git workflow and code review. It made me a stronger coder, sharing my code with others and working on top of other members' codes.
* There were instances where we had disagreements about the project, and I learned a lot about communicating and handling my own emotional response in a team setting. I continue to reflect on ways that my team and I can better share ideas with each other in a respectful and synergistic way.
