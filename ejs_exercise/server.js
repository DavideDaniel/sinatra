var ejs = require( 'ejs' );
var fs = require( 'fs' );
var http = require( 'http' )

var server = http.createServer( function ( req, res ) {

		path = req.url;
		split = path.split( "/" )

		var str = fs.readFileSync( 'views/kittensJS.ejs', 'utf8' );
		var rendered = ejs.render( str, {
				width: parseInt( split[ 1 ]), height: parseInt( split[ 2 ] )
				} );

			res.end( rendered );
		} );

	server.listen( 3000 );

	console.log( 'listening on port 3000!' );