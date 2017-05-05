var express = require('express');
var router = express.Router();
var db = require('../queries')

router.get('/', db.getAllProducts);

//router.get('/', db.getAllOffers);

router.post('/', db.createOffer);

router.delete('/:id', db.removeOffer);

module.exports = router;
