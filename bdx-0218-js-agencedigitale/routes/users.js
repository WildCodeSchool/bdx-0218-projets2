var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

/* GET users listing. */
router.get('/', function(req, res, next) {
  connection.query("SELECT * from users",function  (err,result) {
    if (err) throw err;
    res.render('test');
  });
});

module.exports = router;
