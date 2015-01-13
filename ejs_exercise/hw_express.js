var express = require('express')
var ejs = require( 'ejs' );
var fs = require('fs')
var app = express();


app.get('/:id1/:id2', function(req, res){
	var width = parseInt(req.params.id1)
  	var height = parseInt(req.params.id2)

		var str = fs.readFileSync( 'views/kittensJS.ejs', 'utf8' );
		var rendered = ejs.render( str, {
				width: width, height: height }
				)

			res.send( rendered );
		} );

app.listen(3000);

console.log('listening on port 3000!');


