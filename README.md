# GotIt (Unit 2 Project by Eric Vargas)
-----------
A simplified shopping app to offer products you want to sell. Displays full list of products with info, photos and location meet ups. Offer a price and negotiate a deal. 

### Wireframes
Checkout my [Trello](https://trello.com/b/KvbvZuid/project-2-trash-2-treasure) to view my progress and ideas about the project.

### User Stories
As a user, I would like to see the current listings from top to bottom, top being the newest entries. An option to submit offers towards an item. Also a clean description of the products along with pictures. Finally display a general area where to meet up.

### Pseudocode
* Create database with 3 tables (List, Users and Offers)
* Generate directories for views, routes and pg-promise
* Basic UI build of HTML and CSS on landing page
* Manage functions for CRUD 
* Extend UI build to single product page

### ERD
List _Table A_

| PID |  product_name |  price |  brand |  descrip  | images | UserId |
|-----|:-------------:|:------:|:------:|:---------:|:------:|:------:|
| 1   |      PS4      |  $200  |  Sony  | 1TB, Slim |   url  |    1   |
| 2   | External HDD  |   $80  |   WD   | 1TB, Red  |   url  |    1   |
| 3   | USB Flash Drive | $20 | SanDisk | 64GB, Type A | url |    4   |
| 4   |  DDR3 Memory  |   $50  |  PNY   |    16GB   |   url  |    3   |

Users _Table B_

| UserId |  first | lastInt | zipcode |     email    |
|--------|:------:|:-------:|--------:|:------------:|
|   1    |  Eric  |    V    |  11373  | ev@gmail.com |
|   2    |  Amy   |    S    |  10001  | as@gmail.com |
|   3    |  Bob   |    G    |  11103  | bg@gmail.com |
|   4    | Charlie|    D    |  11105  | cd@gmail.com |

Offers _Table C_

| OfferId |  PID | offer | accepted |
|---------|:----:|:-----:|:--------:|
|    1    |   1  |  $150 |   false  |
|    2    |   1  |  $180 |   true   |
|    3    |   2  |  $60  |   false  |
|    4    |   2  |  $70  |   true   |

### Technologies used/npm Modules
* HTML + CSS </br> _Display webpage structure and design on the browser_
* Javascript </br> _Creates the functionality of movement on the page_
* PostgreSQL </br> _Datebase language to create structured tables_
* Ebay Shopping API </br> _Web app to inherit Ebay listings_ 
* Node.js
* Express.js
* nodemon </br> _Auto refresh the local server_
* pg-promise

# Download Project & Install
-------------

1. [Git clone or download this project]('https://github.com/ericVargas/Shopping-App')
2. Create a PostgreSQL database called 'gotit_db'
3. On your terminal, run psql -d gotit_db -f products.sql
4. If you haven't already, install nodemon package (npm install -g nodemon)
5. Run nodemon, app should be available on localhost:3000
