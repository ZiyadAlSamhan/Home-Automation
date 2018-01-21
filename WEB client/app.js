var express = require('express');
var app = express();
app.use('/static', express.static('public'))
app.use('/css',express.static( 'public/css'));


app.get('/index.html', function (req, res) {
   res.sendFile( __dirname + "/public" + "/index.html" );
})



var server = app.listen(8084, function () {

   var host = server.address().address
   var port = server.address().port

   console.log("Example app listening at http://%s:%s", host, port)
})
