var express = require('express');
var router = express.Router();
var mysql = require('mysql');

function dbConnect(){
  var connection = mysql.createConnection({
    host : 'localhost',
    user: 'root',
    password: '1234',
    database: 'mgp'
  });
  return connection;
}
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/getTimetable', function(req, res){
  var room = req.query.room;
  var day = req.query.day;
  var conn = dbConnect();
  var sql = `SELECT * from timetable WHERE roomID ='${room}' AND day = '${day}'`;

  conn.query(sql, function(err, rows){
    if(err) throw err;
    console.log(rows);
    res.send(rows);
  });

});

module.exports = router;
