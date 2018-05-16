var express = require('express');
var router = express.Router();
var mysql = require('mysql');
const connection = require('../controllers/config');

// AFFICHAGE table MISSIONS
router.get('/', function(req, res) {
  connection.query('SELECT * FROM missions', function(err, docs) {
    res.json(docs);
  });
});

// AJOUT table MISSIONS
router.post('/add', function(req, res) {
  connection.query('INSERT INTO missions SET ?',req.body, function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  });
});

// mise à jour table MISSIONS
router.put('/update/:id', function(req, res, next) {
  let id = req.params.id;
  let dataMiss = {
    nom_poste: req.body.nom_poste,
    recruteur: req.body.recruteur,
    duree: req.body.duree,
    localisation: req.body.localisation,
    departement: req.body.departement,
    diplome: req.body.diplome,
    experience: req.body.experience,
    poste: req.body.poste,
    entreprise: req.body.entreprise,
    competences: req.body.competences,
    logo: req.body.logo
  }
  connection.query('UPDATE missions SET ? WHERE id = ?',[dataMiss, id], function(err, result) {
    res.send(
      (err === null) ? { msg: '' } : { msg: err }
    );
  })
})

// DELETE table MISSIONS
router.delete('/delete/:id', function(req, res) {
  let id = req.params.id;
  connection.query('DELETE FROM missions WHERE id = ?', [id], function(err) {
    res.send((err === null) ? { msg: '' } : { msg:'error: ' + err });
  });
});

module.exports = router;
