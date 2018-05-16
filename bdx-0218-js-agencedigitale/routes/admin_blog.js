var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

// AFFICHAGE table BLOG
router.get('/', function(req, res) {
  connection.query('SELECT * FROM blog', function(err, docs) {
    res.json(docs);
  });
});

// AJOUT table BLOG
router.post('/add', function(req, res) {
  connection.query('INSERT INTO blog SET ?',req.body, function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  });
});

// mise à jour table BLOG
router.put('/update/:id', function(req, res, next) {
  let id = req.params.id;
  let dataBlog = {
    title: req.body.title,
    content: req.body.content,
    images : req.body.images,
    autor: req.body.autor,
    category: req.body.category,
    description : req.body.description
  }
  connection.query('UPDATE blog SET ? WHERE id = ?',[dataBlog, id], function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  })
})

// DELETE table BLOG
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM blog WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
