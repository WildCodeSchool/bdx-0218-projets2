var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var connection = mysql.createConnection({host: "sql7.freemysqlhosting.net", user: "sql7233307", password: "VXV4tMbIPY", database: "sql7233307"});

let select = 'SELECT * FROM records';

let records;

connection.query(select, function(err, rows) {
  if (err)
    throw err;
  records = rows;
})

exports.findById = function(id, cb) {
  process.nextTick(function() {
    var idx = id - 1;
    if (records[idx]) {
      cb(null, records[idx]);
    } else {
      cb(new Error('User ' + id + ' does not exist'));
    }
  });
}

exports.findByUsername = function(username, cb) {
  process.nextTick(function() {
    for (var i = 0, len = records.length; i < len; i++) {
      var record = records[i];
      if (record.username === username) {
        return cb(null, record);
      }
    }
    return cb(null, null);
  });
}
