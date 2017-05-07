# GotIt (Unit 2 Project by Eric Vargas)
-----------
A simplified shopping app to offer products you want to sell. Displays full list of products with info, photos and location meet ups. Offer a price and negotiate a deal. 

### Wireframes
Checkout my [Trello](https://trello.com/b/KvbvZuid/project-2-trash-2-treasure) to view my progress and ideas about the project.

### User Stories
As a user, I would like to see the current listings from top to bottom, top being the newest entries. An option to submit offers towards an item. Also a clean description of the products along with pictures. Finally display a general area where to meet up.

### Pseudocode
* Create database with 2 tables (List and Offers)
* Generate directories for views, routes and pg-promise
* Basic UI build of HTML and CSS on landing page
* Manage functions for CRUD 
* Extend UI build to single product page

### Tables
List _Table A_ 

| id |    product    |  price |  brand |  descrip  | images | zipcode |
|----|:-------------:|:------:|:------:|:---------:|:------:|--------:|
| 1  |      PS4      |  $200  |  Sony  | 1TB, Slim |   url  |  11373  |
| 2  | External HDD  |   $80  |   WD   | 1TB, Red  |   url  |  10001  |
| 3  | USB Flash Drive | $20 | SanDisk | 64GB, Type A | url |  11103  |
| 4  |  DDR3 Memory  |   $50  |  PNY   |    16GB   |   url  |  11105  |

Offers _Table B_ 

| id |  first | lastInt |     email    | list_id | offer | accepted |
|----|:------:|:-------:|:------------:|:-------:|:-----:|:--------:|
| 1  |  Eric  |    V    | ev@gmail.com |    1    |  $150 |   false  |
| 2  |  Amy   |    S    | as@gmail.com |    1    |  $180 |   true   |
| 3  |  Bob   |    G    | bg@gmail.com |    2    |  $60  |   false  |
| 4  | Charlie|    D    | cd@gmail.com |    2    |  $70  |   true   |

SELECT product, price, first, lastInt, offer FROM list, offers WHERE offers.list_id = list.id;

### Technologies used/npm Modules
* HTML + CSS </br> _Display webpage structure and design on the browser_
* Javascript </br> _Creates the functionality of movement on the page_
* PostgreSQL </br> _Datebase language to create structured tables_
* Ebay Shopping API </br> _Web app to inherit Ebay listings_ 
* Express
* Ejs
* Nodemon </br> _Auto refresh the local server_
* Pg-promise
* Morgan </br> _Browser activity terminal logger_

# Download Project & Install
-------------

1. [Git clone or download this project]('https://github.com/ericVargas/Shopping-App')
2. On your terminal, run psql -f ./models/products.sql
3. After that run npm run devstart, app should be available on localhost:3000
