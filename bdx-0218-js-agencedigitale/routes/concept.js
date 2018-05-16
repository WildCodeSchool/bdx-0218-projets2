var express = require('express');
var router = express.Router();
const connection = require('../controllers/config');
let sql = 'SELECT * FROM contact';

/* GET administration page */
router.get('/', function(req, res, next) {

    connection.query(sql, function(err, rows, fields) {
        if (err) {
            res.status(500).json({
                "status_code": 500,
                "status_message": "internal server error"
            });
        } else {
            // Loop check on each row
            let contact = rows;

            res.render('concept3', {
                bodyClass: 'developpeur',
                contact
            });
            console.log(contact);
        }
    });
});

module.exports = router;