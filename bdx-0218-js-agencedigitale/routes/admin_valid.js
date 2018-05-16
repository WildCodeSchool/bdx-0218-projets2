var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var moment = require('moment');
const connection = require('../controllers/config');

// AFFICHAGE table VALIDATION
router.get('/', function(req, res) {
  connection.query('SELECT * FROM missions WHERE valide = 0', function(err, docs) {
    res.json(docs);
  });
});

// mise à jour table VALIDATION
router.put('/valider/:id', function(req, res, next) {
  let id = req.params.id;
  if (req.body.valide === '1') {
    connection.query('UPDATE missions SET valide = 1 WHERE id = ?',[id], function(err, result) {
      res.send(
        (err === null) ? { msg: '' } : { msg: err }
      );
    })
  }
})

// DELETE table VALIDATION
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM missions WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
