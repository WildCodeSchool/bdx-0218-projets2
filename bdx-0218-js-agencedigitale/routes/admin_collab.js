var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

// AFFICHAGE table COLLAB
router.get('/', function(req, res) {
  connection.query('SELECT * FROM collab', function(err, docs) {
    res.json(docs);
  });
});

// AJOUT table COLLAB
router.post('/add', function(req, res) {
  connection.query('INSERT INTO collab SET ?',req.body, function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  });
});

// mise à jour table COLLAB
router.put('/update/:id', function(req, res, next) {
  let id = req.params.id;
  let dataCo = {
    name: req.body.name,
    images: req.body.images,
    age: req.body.age,
    description: req.body.description,
    techno: req.body.techno,
    experience: req.body.experience
  }
  connection.query('UPDATE collab SET ? WHERE id = ?',[dataCo, id], function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  })
})

// DELETE table COLLAB
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM collab WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
