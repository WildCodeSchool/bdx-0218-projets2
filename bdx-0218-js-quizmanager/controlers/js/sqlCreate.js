const mysql = require('mysql');
const connectionParameters = require('./sqlParameters');

setQuiz = (obj,cb) => {
    try {
        let lastQuiz = [];
        let newQuizId = '0';
        const connection = mysql.createConnection(connectionParameters);
        try {
            connection.connect((err) => {
                try {
                    connection.query(
                    'INSERT INTO Quiz(title, category) VALUES (?,?)', [obj.title,obj.category], (err, rows) => {
                        let done = 0;
                        let idQuiz = rows.insertId;
                        newQuizId = idQuiz;
                        for (let i = 0; i < 10; i++) {
                            const numQuestion = i;
                            try {
                                connection.query(
                                'INSERT INTO questions(question, id_quiz) VALUES (?,?)',[obj.questions[i].question,idQuiz], (err, rows) => {
                                    let idQuestion = rows.insertId;
                                    for (let j = 0; j < 4; j++) {
                                            try {
                                                connection.query(
                                                    'INSERT INTO answers(answer, great, id_questions) VALUES (?,?,?)',
                                                    [
                                                        obj.questions[numQuestion].answers[j].answer,
                                                        obj.questions[numQuestion].answers[j].great,
                                                        idQuestion
                                                    ], (err, rows) => {



                                                    });
                                                done ++;
                                                if (done === 40) {
                                                    connection.end();
                                                    cb(newQuizId);
                                                }
                                            } catch (err) {
                                                throw ('An error occur during an answer insert: '+ err);
                                            }
                                    }
                                });
                            } catch (err) {
                                throw ('An error occur during the questions insert: '+ err);
                            }
                        }
                    });
                } catch (err) {
                    throw ('An error occur during the quiz insert: '+ err);
                }
            });
        } catch (err) {
            throw ('An error occur during the connection process: '+ err);
        }
    } catch (err) {
        throw ('An error occur during the connection creation process: '+ err);
    }
};

// Format de requête
// setQuiz(quiz, function(data){
//     console.log('job done, new quiz id :'+ data);
// });

// La variable data retourné correspond à l'Id du quiz inséré

module.exports = {setQuiz};