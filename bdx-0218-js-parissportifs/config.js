// let config = {
// 	database: {
// 		host:	  'localhost', 	// database host
// 		user: 	  'root', 		// your database username
// 		password: 'wildcodeschool2018', 		// your database password
// 		port: 	  3306, 		// default MySQL port
// 		db: 	  'edual' 		// your database name
// 	},
// 	server: {
// 		host: '127.0.0.1',
// 		port: '3000'
// 	}
// }

const mysql = require('mysql');
// Create connection
const db = mysql.createConnection({
    host     :  'localhost', 	// database host
	user     :  'root', 		// your database username
	password :  'root', 		// your database password
	database :  'edual' 		// your database name
});

db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('MySql Connected...');
});


module.exports = ;
