var express = require('express');
var router = express.Router();
var ejs = require('ejs');
var pg = require('pg');
var bodyParser = require('body-parser');
var mysql = require('mysql');
const connection = require('../controllers/config');
const nodemailer = require("nodemailer");

router.use(bodyParser.urlencoded({ extended: true }));

let sql = 'SELECT * FROM bar WHERE type = "serious"; SELECT * FROM collab ;SELECT * FROM contact;';

/* GET recruteur page */
router.get('/', function(req, res, next) {

  	  connection.query(sql, function(err, rows, fields) {
	  	if (err) {
	  		res.status(500).json({"status_code": 500,"status_message": "internal server error"});
	  	} else {

		  		var bar = rows[0];
		  		let collab = rows[1];
		  		let contact = rows[2];

	  	res.render('recruteur', {bodyClass: 'recruteur',
		 						page : 'recruteur',
								contact,
								bar,
								collab});
	  	}
	  	// Render index.pug page using array
    });
});
/*
router.post('/addEmploi', function(req, res) {
  console.log('ok')
	connection.query("INSERT INTO missions SET ?", req.body, function(err, result) {
        if (err)
            throw err;
        res.redirect('confirm_emploi')
    });
});
*/
var smtpTransport = nodemailer.createTransport({
    service: "gmail",
    port: 587,
    host: 'smtp-relay.gmail.com',
    auth: {
        user: "wild.not.you@gmail.com",
        pass: "wow&wow11"
    }
});


let sqlAddEmploi = 'SELECT * FROM bar WHERE type = "serious"; SELECT * FROM collab ;SELECT * FROM contact; INSERT INTO missions SET ?';
router.post('/addEmploi', function(req, res, next) {
    connection.query(sqlAddEmploi, req.body, function(err, rows, fields) {
        //console.log(req.body);
        //console.log(req.body.recruteur);
        if (err) {
            res.status(500).json({
                "status_code": 500,
                "status_message": "internal server error"
            });
        } else {
            smtpTransport.sendMail({
                from: "wild.not.you@gmail.com", // Expediteur
                to: "hollowspy@free.fr", // Destinataires
                subject: "Nouvelle offre d'emploi !", // Sujet
                text: "Nouvelle offre d'emploi !", // plaintext body
                html: `Bonjour. la société ${req.body.recruteur} vient de poser nouvelle offre d'emploi pour une poste de ${req.body.nom_poste} à ${req.body.localisation} dans le département du ${req.body.departement}. Merci d'aller sur l'administration pour la valider ou non`, // html body
            })
            // Loop check on each row
            let contact = rows[2];

            res.render('confirm_emploi', {
                bodyClass: 'developpeur',
                page: 'developpeur',
                contact
            });
        }
    });
});

module.exports = router;
