var express = require('express');
var router = express.Router();
// var mysql = require('mysql');
// var moment = require('moment');
const connection = require('../controllers/config');

// router.get('/admin', function(req, res, next) {
//   connection.query("SELECT * FROM missions WHERE valide = 0", function(err, rows, fields) {
//     console.log(rows.length)
//     if(rows.length === 0 ){
//       res.redirect('../');
//     }else{
// 	  	if (err) {
// 	  		res.status(500).json({"status_code": 500,"status_message": "internal server error"});
// 	  	} else {
//         let valid= rows;
//         console.log(valid.length)
//         res.render('admin', {bodyClass: 'admin,', page: 'admin,', valid, moment});
//       }
//     }
//     })});

// router.put('/valider/:id', function(req, res, next) {
//             if (req.body.action === 'add') {
//               connection.query("UPDATE missions SET valide = 1 WHERE id = ?",[id],function(err, result)
//               {
//                   if (err)
//                       throw err;
//               else{
//                 res.redirect('/validation')
//               }
//             }
//             )}});

// router.delete('/delete/:id', function(req, res, next) {
//   if (req.body.action === 'delete') {
//     connection.query("DELETE FROM missions WHERE id = ?",[id],function(err, result)
//     {
//       if (err)
//       throw err;
//     else{
//       res.redirect('/validation')
//     }
//   }
//   )}});


module.exports = router;
