var express = require('express');
var router = express.Router();
var connection = require('../controllers/config.js')
let sql = 'SELECT * FROM contact';

/* GET recruteur page */

router.get('/', function(req, res, next) {

//    const listEmploi = [];
    // Do the query to get data.
    connection.query('SELECT * FROM missions WHERE valide = 1 ORDER BY date DESC; SELECT * FROM contact', function(err, rows, fields) {
            if (err) {
                res.status(500).json({
                    "status_code": 500,
                    "status_message": "internal server error"
                });
            } else {

                    let emploi = rows[0];
                    let contact = rows[1]

                // Render index.pug page using array
                res.render('page_emploi', {
                    emploi, contact, bodyClass: 'developpeur'
                });
            }
        });
    });


 //GET recruteur page
router.post('/search', function(req, res, next) {
    let poste = req.body.poste;
    let dpt = req.body.Dpt
    let requeteSQL = '';
    console.log(poste, dpt);
    if (dpt)
    requeteSQL = (`SELECT * FROM missions WHERE departement = ${dpt} AND nom_poste LIKE '%${poste}%' AND valide = 1 ORDER BY date DESC; SELECT * FROM contact`)
    else
    requeteSQL = (`SELECT * FROM missions WHERE nom_poste LIKE '%${poste}%' AND valide = 1 ORDER BY date DESC; SELECT * FROM contact`)

    console.log(requeteSQL);

    connection.query(requeteSQL, function(err, rows, fields) {
            if (err) {
                res.status(500).json({
                    "status_code": 500,
                    "status_message": "internal server error"
                });
            } else {

                    let emploi = rows[0];
                    let contact = rows[1];

                // Render index.pug page using array
                res.render('page_emploi', {
                    emploi, bodyClass : 'developpeur', contact
                });
            }
        });
    });

    // Do the query to get data.

module.exports = router;
