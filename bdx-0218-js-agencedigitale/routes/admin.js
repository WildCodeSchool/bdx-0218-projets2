var express = require('express');
var router = express.Router();
var mysql = require('mysql');
var moment = require('moment');
const connection = require('../controllers/config');

let select = "SELECT * FROM bar; SELECT * FROM blog; SELECT * FROM collab; SELECT * FROM contact; SELECT * FROM missions; SELECT * FROM missions WHERE valide = 0; SELECT * FROM login";
/* GET administration page */
router.get('/', function(req, res, next) {

  connection.query(select, function(err, rows, fields) {
	  	if (err) {
	  		res.status(500).json({"status_code": 500,"status_message": "internal server error"});
	  	} else {
        let bar = rows[0];
        let blog = rows[1];
        let collab = rows[2];
        let contact = rows[3];
        let missions = rows[4];
        let valid = rows[5];
        let login = rows[6];

        res.render('admin', { bodyClass:'admin', bar, blog, collab, contact, missions, valid, login ,moment});
	  	}
    });
}); // fin de l'appel au getElementsByClassName('className')

/* GET userlist. */
// router.get('/userlist', function(req, res) {
//   connection.query('SELECT * FROM bar', function(err, docs) {
//     res.json(docs);
//   });
// });

//                        //
// MISE A JOUR DES TABLES //
//                        //


// router.put('/valider/:id', function(req, res, next) {
//   if (req.body.action === 'add') {
//       connection.query("UPDATE missions SET valide = 1 WHERE id = ?",[req.params.id],function(err, result)
//     {
//     if (err)
//         throw err;
//     else{
//       res.redirect('/admin')
//     }
//   }
//   )}});

//-----------------------------//
// SUPPRESSION DANS LES TABLES //
//-----------------------------//

// INVALIDATION OFFRES EMPLOIS
// router.delete('/delete/:id', function(req, res, next) {
//   if (req.body.action === 'delete') {
//     connection.query("DELETE FROM missions WHERE id = ?",[req.params.id],function(err, result)
//     {
//       if (err)
//       throw err;
//     else{
//       res.redirect('/admin')
//     }
//   }
//   )}});


module.exports = router;
