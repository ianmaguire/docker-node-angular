var express = require('express');
var app = express();

app.use(express.static(__dirname + '/hello'));

app.get('/', function(req, res){
  res.redirect('/index.html');
});

app.listen(8080);

