var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

// AFFICHAGE table CONTACT
router.get('/', function(req, res) {
  connection.query('SELECT * FROM contact', function(err, docs) {
    res.json(docs);
  });
});

// AJOUT table CONTACT
router.post('/add', function(req, res) {
  connection.query('INSERT INTO contact SET ?',req.body, function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  });
});

// mise à jour table CONTACT
router.put('/update/:id', function(req, res, next) {
  let id = req.params.id;
  let dataCon = {
    horaires: req.body.horaires,
    adresse: req.body.adresse,
    tel: req.body.tel,
    mail: req.body.mail
  }
  connection.query('UPDATE contact SET ? WHERE id = ?',[dataCon, id], function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  })
})

// DELETE table CONTACT
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM contact WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
