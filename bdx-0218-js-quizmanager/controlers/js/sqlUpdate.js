const mysql = require('mysql');
const connectionParameters = require('./sqlParameters');

updateFaq = (question,reponse,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE faq SET question = ?, reponse = ? WHERE id = ?',[question, reponse, id], (err, results) => {
                              if (err) {throw err;}
                              else  {cb('update succeed!');}
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

updateAccueil = (text1,text2,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE accueil SET text1 = ?, text2 = ? WHERE id = ?',[text1, text2, id], (err, results) => {
                              if (err) {throw err;}
                              else  {cb('update succeed!');}
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

updateQst = (question,id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE questions SET question = ? WHERE id = ?',[question, id], (err, results) => {
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

updateAns = (answer,great,id,cb) => {
  try {  
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE answers SET answer = ?, great=? WHERE id = ?',[answer, great,id], (err, results) => {
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

updateAnsGreat = (great,id,cb) => {
  try {  
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE answers SET great = 0 WHERE id = ?',[great, id], (err, results) => {
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


//VALIDATION QUIZ//
updateValidate = (id,cb) => {
  try {
      const connection = mysql.createConnection(connectionParameters);
      try {
          connection.connect((err) => {
              try {
                  connection.query(
                    'UPDATE Quiz SET checked=1 WHERE id = ?',[id], (err, results) => {
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
//FIN VALIDATION QUIZ//


let test =
{
    "title": "bouh",
    "category": "divers",
    "questions": [
      {
        "question": "1=",
        "answers": [
          {
            "answer": "1",
            "great": true
          },
          {
            "answer": "2",
            "great": false
          },
          {
            "answer": "3",
            "great": false
          },
          {
            "answer": "4",
            "great": false
          }
        ]
      },
      {
        "question": "2=",
        "answers": [
          {
            "answer": "1",
            "great": false
          },
          {
            "answer": "2",
            "great": true
          },
          {
            "answer": "3",
            "great": false
          },
          {
            "answer": "4",
            "great": false
          }
        ]
      },
      {
        "question": "3=",
        "answers": [
          {
            "answer": "1",
            "great": false
          },
          {
            "answer": "2",
            "great": false
          },
          {
            "answer": "3",
            "great": true
          },
          {
            "answer": "4",
            "great": false
          }
        ]
      },
      {
        "question": "4=",
        "answers": [
          {
            "answer": "1",
            "great": false
          },
          {
            "answer": "2",
            "great": false
          },
          {
            "answer": "3",
            "great": false
          },
          {
            "answer": "4",
            "great": true
          }
        ]
      },
      {
        "question": "5=",
        "answers": [
          {
            "answer": "1",
            "great": false
          },
          {
            "answer": "2",
            "great": false
          },
          {
            "answer": "3",
            "great": false
          },
          {
            "answer": "5",
            "great": true
          }
        ]
      },
      {
        "question": "La racine carré de 121 est",
        "answers": [
          {
            "answer": "1",
            "great": false
          },
          {
            "answer": "2",
            "great": false
          },
          {
            "answer": "11",
            "great": true
          },
          {
            "answer": "22",
            "great": false
          }
        ]
      },
      {
        "question": "blanche fesse et les 7",
        "answers": [
          {
            "answer": "nains",
            "great": false
          },
          {
            "answer": "daims",
            "great": false
          },
          {
            "answer": "mains",
            "great": true
          },
          {
            "answer": "grains",
            "great": false
          }
        ]
      },
      {
        "question": "le nom de",
        "answers": [
          {
            "answer": "l'églantine",
            "great": false
          },
          {
            "answer": "la rose",
            "great": true
          },
          {
            "answer": "ma mère",
            "great": false
          },
          {
            "answer": "ta mère",
            "great": false
          }
        ]
      },
      {
        "question": "rest",
        "answers": [
          {
            "answer": "api",
            "great": false
          },
          {
            "answer": "in peace",
            "great": true
          },
          {
            "answer": "ponsive",
            "great": false
          },
          {
            "answer": "ici",
            "great": false
          }
        ]
      },
      {
        "question": "le podologue",
        "answers": [
          {
            "answer": "s'occupe des p......................................................................................................ieds",
            "great": true
          },
          {
            "answer": "étudie les poux",
            "great": false
          },
          {
            "answer": "collectionne les pots",
            "great": false
          },
          {
            "answer": "étudie les pots",
            "great": false
          }
        ]
      }
    ]
  }


  
// TODO
// updateQuestion = (id,obj,cb) => {
//     try {

//     } catch (err) {
//         throw ('An error occur, try again later: '+err);
//     }
// }

module.exports = {
  updateFaq,
  updateAccueil,
  updateQst,
  updateAns,

  updateValidate,
  updateAnsGreat
};

