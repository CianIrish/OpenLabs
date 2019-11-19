var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var session = require('express-session')
var mysql = require('mysql');
var app = express();


function dbConnect(){
    var connection = mysql.createConnection({
       host : 'localhost',
       user: 'root',
       password: '1234',
       database: 'mgp'
    });
    return connection;
}

app.use(session({ secret: 'keyboard cat', cookie: { maxAge: 60000 }}))
 
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

app.get('/setSomething', function(req, res, next) {
  req.session.name = 'John Smith'
  res.send('ahh');
});



app.get('/getSomething', function(req, res, next) {
  res.send('hello' + req.session.name);
});



app.post('/login',function(req,res){
	var user_name=req.body.username;
	var pass_word=req.body.password;
	var connection = dbConnect();
	var sql = `SELECT * FROM users WHERE username='${user_name}' AND password = '${pass_word}';`;

	connection.query(sql, function(err, rows){
	    if(err) throw err;
	    if(rows.length>0){
	        res.send("Successful Login");
        }
	    else{
	        res.send("Unsuccessful Login");
        }
    });
});
app.post('/register', function(req, res){
    var user_name=req.body.username;
    var pass_word=req.body.password;
    var email=req.body.email;

    var connection = dbConnect();
    var sql = `SELECT * FROM users WHERE username = '${user_name}'`;
    connection.query(sql, function(err, rows){
       if(rows.length === 0){
           sql = `INSERT INTO users VALUES(NULL, '${user_name}', '${email}' ,'${pass_word}');`;
           connection.query(sql, function(err, result){
               if(err) throw err;
               res.send("Success");
           });
       }
       else{
           res.send("Username Taken");
       }
    });


});


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
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
