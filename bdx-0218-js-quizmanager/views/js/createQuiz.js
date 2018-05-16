let newQuiz = {
    title:'',
    category:'',
    questions: []
};

let questions = {
    question:'',
    answers: []
};

let answers = {
    answer:'',
    great:''
};

let index = 0;

const quizAnswers = document.getElementById('quizAnswers');
const past = document.getElementById('past');
const next = document.getElementById('next');
const begin = document.getElementById('textOui');
const question = document.getElementById('question');
const reponse1 = document.getElementById('reponse1');
const reponse2 = document.getElementById('reponse2');
const reponse3 = document.getElementById('reponse3');
const reponse4 = document.getElementById('reponse4');
const numero = document.getElementById('numeroQuestion');
const quizyTalk = document.getElementById('quizyTalk');
const great1 = document.getElementById('great1');
const great2 = document.getElementById('great2');
const great3 = document.getElementById('great3');
const great4 = document.getElementById('great4');

begin.addEventListener('click', function(e) {
    e.preventDefault();
    if (newQuiz.title = document.getElementById('titre').value != '') {
        quizAnswers.style.display = 'block';
        next.style.display = 'block';

        begin.style.display = "none";
        document.getElementsByClassName('cadreQuestion')[0].style.display = "none";
        newQuiz.title = document.getElementById('titre').value;
        newQuiz.category = document.getElementById('category').value;
        quizyTalk.textContent = 'remplissez votre question et ses réponses';
        getQuestions(index);
    }
    quizyTalk.textContent = 'Vous devez choisir un titre pour votre quiz';
});

past.addEventListener('click', function(e){
    e.preventDefault();
    if (checkCompleted(index)) {
        if ((index>0) && (index<10)) {
            addQuestion(index);
            index --;
            getQuestions(index);
            checkIndex(index);
            prefill(index);
        } else if (index===10) {
            quizAnswers.style.display = "block";
            index --;
            getQuestions(index);
            checkIndex(index);
            quizyTalk.textContent = 'remplissez votre question et ses réponses';
            next.textContent = "NEXT";
        }
    }
})

next.addEventListener('click', function(e){
    e.preventDefault();
    if (checkCompleted(index)) {
        if (index<9) {
            addQuestion(index);
            index ++;
            getQuestions(index);
            checkIndex(index);
            prefill(index);
        } else if (index ===9) {
            addQuestion(index);
            index ++;
            endOfCreation();
        } else if (index>9) {
                next.style.display = 'none';
                past.style.display = 'none';
            ajaxPost("http://localhost:3000/creationQuiz", newQuiz, function (answer) {
                let parsedAnswer = JSON.parse(answer);
                quizyTalk.textContent = "Merci";
                addReturn();
                setTimeout(function () {
                    quizyTalk.textContent = "Votre quiz est en ligne avec l'identifiant N°"+parsedAnswer.answer;
                    goPlay(parsedAnswer.answer)
                }, 1500);
             }, true);
        }
    }
})

const checkCompleted = (index) => {
    if ( question.value === "") {
        quizyTalk.textContent = 'Pensez à compléter la question';
        return false;
    } else if ((reponse1.value === "") || (reponse2.value === "") || (reponse3.value === "") || (reponse4.value === "")) {
        quizyTalk.textContent = 'Pensez à compléter les réponses';
        return false;
    } else if ((great1.checked === false) && (great2.checked === false) && (great3.checked === false) && (great4.checked === false)) {
        quizyTalk.textContent = 'Pensez à cocher la bonne réponse';
        return false;
    }
        return true;
}

const prefill = (index)  => {
    if (newQuiz.questions[index] === undefined) {

        question.value = "";
        reponse1.value = "";
        reponse2.value = "";
        reponse3.value = "";
        reponse4.value = "";
        great1.checked = false;
        great2.checked = false;
        great3.checked = false;
        great4.checked = false;
    } else {
        question.value = newQuiz.questions[index].question;
        reponse1.value = newQuiz.questions[index].answers[0].answer;
        reponse2.value = newQuiz.questions[index].answers[1].answer;
        reponse3.value = newQuiz.questions[index].answers[2].answer;
        reponse4.value = newQuiz.questions[index].answers[3].answer;
        great1.checked = newQuiz.questions[index].answers[0].great;
        great2.checked = newQuiz.questions[index].answers[1].great;
        great3.checked = newQuiz.questions[index].answers[2].great;
        great4.checked = newQuiz.questions[index].answers[3].great;
    }
    quizyTalk.textContent = 'remplissez votre question et ses réponses';
}

const endOfCreation = () => {
    next.textContent = "ENREGISTRER";
    quizyTalk.textContent = "Prenez le temps de bien vérifier votre Quiz";
    quizAnswers.style.display = "none";
    numero.textContent = "Vous avez complété votre quiz, vous pouvez l'enregister";
}

const checkIndex = (index) => {
    if (index===0) {
        past.style.display = 'none';
    } else if (index ===1) {
        past.style.display = 'block';
    }
}

const addQuestion = (index) => {
    let answer1 = {answer:reponse1.value, great: great1.checked};
    let answer2 = {answer:reponse2.value, great: great2.checked};
    let answer3 = {answer:reponse3.value, great: great3.checked};
    let answer4 = {answer:reponse4.value, great: great4.checked};
    questions.answers.push(answer1, answer2, answer3, answer4);
    questions.question = question.value;
    newQuiz.questions[index] = questions;
    questions = {
        question:'',
        answers: []
    };

    answers = {
        answer:'',
        great:''
    };
}

const getQuestions = (index) => {
    numero.textContent ='Question N°'+(index+1);
}

const addReturn = () => {
    let newDiv = document.createElement("a");
        newDiv.setAttribute("class", "endBox");
    let newContent = document.createTextNode("Retour à l'Accueil");
        newDiv.appendChild(newContent);
        newDiv.setAttribute("href", "/accueil");
    const here = document.getElementById('returnButton');
        here.appendChild(newDiv);
}

const goPlay = (idQuiz) => {
    let newDiv = document.createElement("a");
        newDiv.setAttribute("class", "endBox");
        newDiv.textContent = "Testez votre quiz";
        newDiv.setAttribute("href", "/questionspage/"+idQuiz);
    const here = document.getElementById('tryQuiz');
        here.appendChild(newDiv);
}
