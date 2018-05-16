const mysql = require('mysql');
const connectionParameters = require('./sqlParameters');

updateDelete = (id,cb) => {
    try {
        const connection = mysql.createConnection(connectionParameters);
        try {
            connection.connect((err) => {
                try {
                    connection.query(
                      'DELETE From Quiz WHERE id = ?',[id], (err, results) => {
                                if (err) {throw err;}
                                else {cb('okay update done')}
                    });
                } catch (err) {
                         throw ('An error occur during the data update: '+err);
                }        
            });
        } catch (err) {
          throw ('An error occur during the connection process: '+ err);
        }
    } catch (err) { 
        throw ('An error occur during the connection creation process: '+ err);
    }
  };

module.exports= {updateDelete};
