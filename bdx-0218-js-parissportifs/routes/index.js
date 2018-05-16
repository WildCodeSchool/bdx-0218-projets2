const express = require('express');
const router = express.Router();
const multer = require('multer');
const upload = multer({ dest: 'tmp/' });
const fs = require('fs');
const mysql = require('mysql');

const db = mysql.createConnection({
    host     :  'localhost', 	// database host
	user     :  'root', 		// your database username
	password :  'Geronimo@', 		// your database password
	database :  'edual' 		// your database name
});

router.get('/', function(req, res) {
    res.render('pages/index');
});

router.get('/administration', (req, res, next) => {
    res.render('pages/administration');
});

// Route permettant d'acceder à l'espace admin
router.get('/administration/dashboard', (req, res, next) => {
    res.render('pages/dashboard');
    });

   
    /* ----- Upload ----- */
    router.post('/administration/upload', upload.single('file'), (req, res, next) => {
        console.log("je suis dans le");

    if (req.file.size > 3000000) {
    res.send('Fichier trop volumineux');
    } else if (req.file.mimetype !== 'image/png') {
    res.send('Extension de fichier non accepté')
    } else {
    fs.rename(req.file.path, 'public/img/' + 'background.png', (err) => {
    if (err) {
    res.send('Problème durant le déplacement');
    } else {
    res.redirect('dashboard')
    }
    });
    }
    
    });

// "Je rentre dans l'arêne //
router.post('/quotes', (req, res) => {
    console.log('vous êtes inscris!')
})


// about page
router.get('/about', function(req, res) {
    res.render('pages/about');
});

// profil page
router.get('/profil', function(req, res) {
    res.render('pages/profil');
});

// let sql = 'SELECT gifts from Lots';
// game
router.get('/game/:id(\\d+)', function(req, res) {
    res.render('pages/game');
});


router.get('/game/:id(\\d+)', function(req, res) {
    res.render('pages/game');
});

module.exports = router;
