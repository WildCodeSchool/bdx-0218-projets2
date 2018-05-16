var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var passport = require('passport');

var Strategy = require('passport-local').Strategy;
var db = require('./db');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

// Configure the local strategy for use by Passport.

passport.use(new Strategy(function(username, password, cb) {
  db.users.findByUsername(username, function(err, user) {
    if (err) {
      return cb(err);
    }
    if (!user) {
      return cb(null, false);
    }
    if (user.password != password) {
      return cb(null, false);
    }
    return cb(null, user);
  });
}));

// Configure Passport authenticated session persistence.

passport.serializeUser(function(user, cb) {
  cb(null, user.id);
});

passport.deserializeUser(function(id, cb) {
  db.users.findById(id, function(err, user) {
    if (err) {
      return cb(err);
    }
    cb(null, user);
  });
});

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// Use application-level middleware for common functionality, including
// logging, parsing, and session handling.
app.use(require('morgan')('combined'));
app.use(require('cookie-parser')());
app.use(require('body-parser').urlencoded({extended: true}));
app.use(require('express-session')({secret: 'keyboard cat', resave: false, saveUninitialized: false}));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({extended: false}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

// Initialize Passport and restore authentication state, if any, from the
// session.
app.use(passport.initialize());
app.use(passport.session());

app.use('/', indexRouter);
app.use('/users', usersRouter);

// Define routes.
/*
app.get('/', function(req, res) {
  res.render('index', {user: req.user});
});
*/
app.get('/login',
  function(req, res){
    res.render('login', {user: req.user});
  });

app.post('/login', passport.authenticate('local', {failureRedirect: '/login'}), function(req, res) {
  res.redirect('/bendo');
});

app.get('/logout', function(req, res) {
  req.logout();
  res.redirect('/');
});

app.get('/bendo',
require('connect-ensure-login').ensureLoggedIn('/login'),
function(req, res) {
  res.render('admin', {user: req.user});
});

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development'
    ? err
    : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
