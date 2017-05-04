var express = require('express');
var router = express.Router();
var db = require('../queries')

/* GET home page. */
router.get('/', db.getAllUsers);

router.post('/', db.createUser);

router.delete('/:id', db.removeUser);

module.exports = router;
