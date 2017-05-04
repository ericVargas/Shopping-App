var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { mainTitle: 'GotIt' });
});

router.post('/', function(req, res, next) {
  let data = [req.body]
  res.render('index', { title: 'Users', data:data });
})

module.exports = router;
