Model
Responsible for data persistence - talks to the database

View
Responsible for the presentational layer of the application

Controller
Responsible for routing - communicates with both the view and the model

ReST
Representational State Transfer


model Item

7 restful routes for items

HTTP Verb | Route |         Action
GET         /items          index   #list of items
GET         /items/new      new     #renders the form to create a new item
POST        /items          create  #creates and saves a new item into the DB
GET         /items/:id      show    #show a specific item based off of the id in the route parameter
GET         /items/:id/edit edit    #renders the form to update an existing item
DELETE      /items/:id      destroy #removes an item from the database
PUT/PATCH   /items/:id      update  #updates an existing item