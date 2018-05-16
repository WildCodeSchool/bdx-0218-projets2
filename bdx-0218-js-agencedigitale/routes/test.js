var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

/* GET userlist. */
router.post('/addUsers', function(req, res) {
    let users = {
      first: req.body.first,
      last: req.body.last,
      nick: req.body.nick,
      extras: req.body.extras
    }
    console.log(users);
    connection.query("INSERT into users SET ?",users,function  (err,result) {
		if (err) throw err;
		res.send("Created "+JSON.stringify(result));
	});
  // res.send(JSON.stringify(req.body));
});

module.exports = router;
