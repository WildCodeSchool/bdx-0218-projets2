var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

// AFFICHAGE table BAR
router.get('/', function(req, res) {
  connection.query('SELECT * FROM bar', function(err, docs) {
    res.json(docs);
  });
});

// AJOUT table BAR
router.post('/add', function(req, res) {
  console.log(req.body);
  connection.query('INSERT INTO bar SET ?',req.body, function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  });
});

// mise à jour table BAR
router.put('/update/:id', function(req, res, next) {
  let id = req.params.id;
  let dataBar = {
    name: req.body.name,
    picto: req.body.picto,
    numbers : req.body.numbers
  }
  connection.query('UPDATE bar SET ? WHERE id = ?',[dataBar, id], function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  })
})

// DELETE table BAR
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM bar WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
