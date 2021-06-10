var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var routes = require('./routes/index');
//var routes_test = require('./routes/test');

var app = express();
var Freemarker = require('freemarker.js');

var fm = new Freemarker({
  viewRoot: path.join(__dirname, 'tpl'),
  options: {}
});



var fs = require('fs'); 

app.engine('ftl', function(filePath, options, callback) { // 定义模板引擎
  filePath=filePath.replace(fm.viewRoot,"");
  fm.render(filePath,  options , function(err, data, out) {

    if (err) return callback(new Error(err));
    return callback(null, data);
  });
});


app.set('views', path.join(__dirname, 'tpl'));
app.set('view engine', 'ftl');





// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '')));

app.use('/', routes);
//app.use('/test', routes_test);


app.use(function(err, req, res, next) {
  if (err) {
    res.status(500);
    try {
      return res.json(err.message || "操作发生错误");
    } catch (e) {
      console.error('500 set header after send');
    }
  }
});


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});



if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('page/404', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('page/404', {
    message: err.message,
    error: {}
  });
});





module.exports = app;
