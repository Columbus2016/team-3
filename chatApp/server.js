var express = require('express');
var app = express();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var bodyParser = require('body-parser');
var path = require('path');
var mongoose = require('mongoose');
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

var ChatSession = mongoose.model('ChatSession',{
  user1 : Number,
  user2: Number,
  room: String,
  createdAt: Date
});

app.get('/', function(req, res){
  res.render('public/index.html');
});

app.get('/other',function(req,res){
  res.sendFile(path.join(__dirname,'/public/other.html'));
});

app.post('/newRoom',function(req,res){

});

app.get('/getRoomNum',function(req,res){
  res.json(roomNum);
});

app.get('/getSessions',function(req,res){
  ChatSession.find(function(err,sessions){
    if(err){
      res.send(err);
    }

    res.json(sessions);
  });
});

io.on('connection', function(socket){
  console.log('a user connected');
  socket.on('chat message', function(msg){
    roomNum++;
    io.emit('chat message',msg);

  });

  socket.on('add room',function(data){


    roomNum++;

    var room = 0;


    console.log(roomNum);
    var values ={};
    values["user1"] = data.user1;
    values["user2"] = data.user2;
    values["room"] = roomNum;
    console.log(values);
    ChatSession.create(values);

  });
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
