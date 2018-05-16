const express = require('express');
const router = express.Router();
const connection = require('../controllers/config');


let sql = 'SELECT * FROM bar WHERE type = "fun"; SELECT * FROM missions WHERE valide = 1 ORDER BY date DESC LIMIT 6; SELECT * FROM contact';

/* GET home page. */
router.get('/', function(req, res, next) {
    let barList = [];
    connection.query(sql, function(err, rows, fields) {
        if (err) {
            res.status(500).json({
                "status_code": 500,
                "status_message": "internal server error"
            });
        } else {
            // Loop check on each row
            let fun = rows[0];
            let emploi = rows[1];
            let contact = rows[2];

            res.render('index', {
                bodyClass: 'developpeur',
                page: 'developpeur',
                fun,
                emploi,
                contact
            });
        }
    });
});

module.exports = router;
