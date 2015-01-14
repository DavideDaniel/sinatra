var express = require( "express" )
var ejs = require( "ejs" );
var fs = require( "fs" )
var app = express();

var name = [ "Alex", "David", "Jason" ];
var home = [ "Lynbrook", "Brooklyn", "Flushing" ];
var colors = [ "Blue", "Green", "Black" ];
var bands = [ "Linkin Park", "Led Zepplin",
	"Chvrches"
];

app.get( "/", function ( req, res ) {
	var ran_name = name[ Math.floor( Math.random() * name.length ) ]
	var ran_home = home[ Math.floor( Math.random() * home.length ) ]
	var ran_color = colors[ Math.floor( Math.random() * colors.length ) ]
	var ran_band = bands[ Math.floor( Math.random() * bands.length ) ]

	var str = fs.readFileSync( "views/hwIndex.ejs", "utf8" );
	var rendered = ejs.render( str, {
		name: ran_name,
		home: ran_home,
		band: ran_band,
		color: ran_color
	} );
	res.send( rendered );
} );

app.listen( 3000 );