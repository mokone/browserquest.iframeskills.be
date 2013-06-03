/* Module dependencies. */
var express = require('express');

var app = express();

app.configure(function(){
  app.set('view engine', 'hbs');
  app.set("view options", { layout: false })
  app.set('views', __dirname + '/');
  app.engine('html', require('hbs').__express);


});

app.get('/', function(req, res){
  res.render("client-build-deploy/index.html");
});

app.listen(8083);