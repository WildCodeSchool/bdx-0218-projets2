var express = require('express');
var router = express.Router();
const mysql = require('mysql');

// Create connection
const db = mysql.createConnection({
  host     :  'localhost', 	// database host
	user     :  'root', 		// your database username
	password :  'Geronimo@', 		// your database password
	database :  'edual' 		// your database name
});

// router.get('/game/:id(\\d+)', function (req, res, next) {
//   res.render('game', {id : req.params.id_match});
// })

router.get("/", function (req, res) {
  res.render('pages/paris');

})

router.get('/api/laroutedansmonrouter', function (req, res, next) {
  let sql = 'SELECT gifts from Lots';
  let query = db.query(sql, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
})

router.post('/api/laroutedansmonrouter', function (req, res, next) {
  let sql1 = 'INSERT INTO Paris'
  let query1 = db.query(sql1, (err, result) => {
    if (err) throw err;
    res.send(result);
  });
})
//   // ICI JE DOIS FAIRE MA REQUETE VERS MON SERVEUR MYSQL


// // le router doit renvoyer une res.send(lesdonnéesdemarequetesql)
//   res.send(maRequeteSQL)


module.exports = router;