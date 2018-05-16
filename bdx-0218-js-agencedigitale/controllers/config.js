var mysql = require('mysql');

var connection = mysql.createConnection({
  multipleStatements: true,
  host     : 'sql7.freemysqlhosting.net',
  user     : 'sql7234609',
  password : 'y1bIBlDERs',
  database : 'sql7234609'
});

connection.connect(function(err){
if(!err) {
    console.log("Database is connected");
} else {
    console.log("Error while connecting with database");
}
});
module.exports = connection;
