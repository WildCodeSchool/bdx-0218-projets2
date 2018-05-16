var express = require('express');
var router = express.Router();
const connection = require('../controllers/config.js');

/* GET home page. */
router.get('/', function(req, res, next) {

    var contactList = [];
    connection.query('SELECT * FROM contact', function(err, rows, fields) {
        if (err) {
            res.status(500).json({
                "status_code": 500,
                "status_message": "internal server error"
            });
        } else {

            // for (var i = 0; i < rows.length; i++) {

            var fullForm = {
                'horraires': rows.horraires,
                'adresse': rows.adresse,
                'tel': rows.tel,
                'mail': rows.mail
            }
            contactList.push(fullForm);

            // }
            res.render('footer_collab', {
                'contactList': contactList
            });
        } // end else
    }); // end connection.query
}); // end router.get


module.exports = router;

