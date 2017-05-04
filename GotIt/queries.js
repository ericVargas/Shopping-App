var promise = require('bluebird');
var options = { promiseLib: promise };

var pgp = require('pg-promise')(options);

var connectionString = 'postgres://localhost:5432/products_db';
var db = pgp(connectionString);

function createUser(req, res, next) {
  console.log(req.body)
  req.body.age = parseInt(req.body.age);
  db.none('INSERT INTO users(first, lastInt, zipcode, email)' + 'VALUES (${first}, ${lastInt}, ${zipcode}, ${email})',
    req.body).then(res.redirect('/')).catch(function (err) {
      return next(err);
    });
}

function getAllUsers(req, res, next) {
    console.log('all users');
    db.any('SELECT * FROM users')
    .then(function(data){res.render('index', { title:'All Users', data:data})    
    });
}

function removeUser(req, res, next) {
  console.log('inside remove')
  var userID = parseInt(req.params.id); // changed id to UserId
  db.result('DELETE FROM users WHERE id = $1', userID)
    .catch(function (err) {
      return next(err);
    });
}

module.exports = {
  createUser: createUser,
  getAllUsers: getAllUsers,
  removeUser: removeUser,
};