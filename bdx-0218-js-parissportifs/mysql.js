const mysql = require('mysql');

///////////////////////////////////////////
/////// Lier la Bdd //////////////////////
/////////////////////////////////////////

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "Azerty123!",
    database: "edual",
    multipleStatement: true
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});


