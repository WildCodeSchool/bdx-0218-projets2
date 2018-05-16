let express = require('express');
let path = require('path');
let favicon = require('serve-favicon');
let logger = require('morgan');
let cookieParser = require('cookie-parser');
let bodyParser = require('body-parser');
let methodOverride = require('method-override');
let index = require('./routes/index');
let users = require('./routes/users');
let recruteur = require('./routes/recruteur');
let admin = require('./routes/admin');
let adminBar = require('./routes/admin_bar');
let adminBlog = require('./routes/admin_blog');
let adminMiss = require('./routes/admin_missions');
let adminCo = require('./routes/admin_collab');
let adminCon = require('./routes/admin_contact');
let adminVal = require('./routes/admin_valid');
let blog = require('./routes/blog');
let emploi = require('./routes/emploi');
let login = require('./routes/login');
let concept = require('./routes/concept');
let test = require('./routes/test');

const router = express.Router();
const multer = require('multer');
const upload = multer({dest : 'tmp/'})
let app = express();


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "POST, GET, PUT, DELETE, OPTIONS")
    next();
});

app.use(methodOverride('_method'));

app.use('/', index);
app.use('/users', users);
app.use('/recruteur', recruteur);
app.use('/login', login);
app.use('/admin', admin);
app.use('/admin/bar', adminBar);
app.use('/admin/blog', adminBlog);
app.use('/admin/missions', adminMiss);
app.use('/admin/collab', adminCo);
app.use('/admin/contact', adminCon);
app.use('/admin/valid', adminVal);
app.use('/blog', blog);
app.use('/concept', concept);
app.use('/emploi', emploi);
app.use('/users', test);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
