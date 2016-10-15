var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var bodyParser = require('body-parser');
var path = require('path');
var mongoose = require('mongoose');
var cookieParser = require('cookie-parser');
var roomNum = 0;

app.use(express.static(__dirname + '/public'));
app.use(bodyParser.urlencoded({'extended':'true'}));
app.use(bodyParser.json());
app.use(bodyParser.json({type:'application/vnd.api+json'}));


// connect to db using morgan
var options = {
  user:"sgk",
  pass:"123456",
};
mongoose.connect('mongodb://localhost/sgkApp',options);

// test if the database successfully connected
var db = mongoose.connection;
db.on('error',console.error.bind(console, 'connnection error:'));
db.once('open',function(){
  console.log("Successfully connected!");
});


app.get('/', function(req, res){
  res.render('public/index.html');
});


io.on('connection', function(socket){

  socket.on('chat message', function(msg){
    io.emit('chat message', msg);
  });

  socket.on('disconnect', function(){
    console.log('user disconnected');
  });
});

http.listen(5000, function(){
  console.log('listening on *:5000');
});
