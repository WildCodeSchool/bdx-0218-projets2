const express = require('express');
const moment = require('moment');
const router = express.Router();
const connection = require('../controllers/config');

const querySQL = 'SELECT * FROM blog ORDER BY date_parution DESC LIMIT 3; SELECT * FROM contact';
const queryGetBlogId = 'SELECT * FROM blog WHERE id=?; SELECT * FROM contact';


/* GET blog page. */

router.get('/', (req, res, next) => {

  connection.query(querySQL, function (err, rows, fields) {
    if (err) {
			res.status(500).json({ "status_code": 500, "status_message": "internal server error" });
		} else {
      // Loop check on each row
      let tableau = rows[0];
      let contact = rows[1];
    res.render('blog', { bodyClass: 'developpeur', 'blogs': tableau, title: 'Blog WNY', moment, contact });
    }
  });
});


router.get('/:id', (req, res, next) => {

  connection.query(queryGetBlogId, req.params.id, function (err, blogs, fields) {
    if (err) {
			res.status(500).json({ "status_code": 500, "status_message": "internal server error" });
		} else {
      // Loop check on each row
      let blogId = blogs[0];
      let contact = blogs[1];
      console.log(blogId.length);
    res.render('full_article', { bodyClass: 'developpeur', article : blogId[0], moment, contact });
    }
  });
});

module.exports = router;
