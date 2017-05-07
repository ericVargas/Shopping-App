var promise = require('bluebird');
var options = { promiseLib: promise };

var pgp = require('pg-promise')(options);

var connectionString = 'postgres://localhost:5432/products_db';
var db = pgp(connectionString);

function createOffer(req, res, next) {
  console.log(req.body);
  req.body.age = parseInt(req.body.age);
  db.none('INSERT INTO offers (first, lastInt, email, offer)' + 'VALUES (${first}, ${lastInt}, ${email}, ${offer})',
    req.body).then(res.redirect('/')).catch(function (err) {
      return next(err);
    });
}

function getAllOffers(req, res, next) {
    console.log('all offers');
    db.any('SELECT * FROM offers')
    .then(function(data){res.render('index', { title:'All Offers', data:data})  
    });
}

function removeOffer(req, res, next) {
  console.log('inside remove');
  var offerID = parseInt(req.params.id); // changed id to UserId
  db.result('DELETE FROM offers WHERE id = $1', offerID)
}

function getAllProducts(req, res, next) {
    console.log('all products');
    db.any('SELECT * FROM list')
    .then(function(data){res.render('index', { title:'All Products', data:data})
    });
}

function getProduct(req, res, next) {
    console.log('all products');
    db.any('SELECT * FROM list WHERE id = $1')
    .then(function(data){res.render('index', { title:'Product', data:data})
    });
}

module.exports = {
  getAllProducts: getAllProducts,
  createOffer: createOffer,
  getAllOffers: getAllOffers,
  removeOffer: removeOffer
};