# Project 2 (Trash 2 Treasure)
-----------

A simplified shopping app to offer products you want to sell. Displays full list of product info, photos and location meet ups. Offer a price and negotiate a deal. 

### Wireframes
Checkout my [Trello](https://trello.com/b/KvbvZuid/project-2-trash-2-treasure) to view my progress and ideas about the project.

### User Stories
As a user, I would like to see the current listings from top to bottom, top being the newest entries. An option to submit offers towards an item. Also a clean description of the products along with pictures. 

### Pseudocode
Include some pseudocode.

### ERD
List Table

| PID |  product_name |  price | UserId |
|-----|:-------------:|-------:|-------:|
| 1   |      PS4      |  $200  |    1   |
| 2   | External HDD  |   $80  |    1   |
| 3   | USB Flash Drive |  $20 |    4   |
| 4   |  DDR3 Memory  |   $50  |    3   |

Details Table

| PID |  brand |  descrip  | images |
|-----|:------:|:---------:|-------:|
| 1   |  Sony  | 1TB, Slim |   url  |
| 2   |   WD   | 1TB, Red  |   url  |
| 3   | SanDisk | 64GB, Type A | url|
| 4   |  PNY   |    16GB   |   url  |

Users Table

| UserId |  first | lastInt | zipcode |
|--------|:------:|:-------:|--------:|
|   1    |  Eric  |    V    |  11373  |
|   2    |  Amy   |    S    |  10001  |
|   3    |  Bob   |    G    |  11103  |
|   4    | Charlie|    D    |  11105  |

### Technologies used/npm Modules
* HTML + CSS _Display webpage structure and design on the browser_
* Javascript _Creates the functionality of movements on the page_
* node.js
* express.js
* postgreSQL _Datebase language to create structured tables_
* Ebay API _Web app to inherit ebay listings_ </br></br>
Include all the technologies you used along with a brief description of their functionality. Remember to include npm packages here.

# Download Project & Install
-------------

This is a very important step and one that you did not need in your first project. When you have a project with a server and a database you need to give instructions to the end user on how to run it. the following is a good example of what this might look like.

1. [Git clone or download this project]('https://github.com/ericVargas/Shopping-App')
2. Create a PostgreSQL database called 'project_2_db'
3. On your terminal, run psql -d project_2_db -f migrations/migrations.sql
4. If you haven't already, install nodemon package (npm install -g nodemon)
5. Run nodemon, app should be available on localhost:3000
