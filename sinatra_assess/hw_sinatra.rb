require "sinatra"

name = [ "Alex", "David", "Jason" ];
home = [ "Lynbrook", "Brooklyn", "Flushing" ];
colors = [ "Blue", "Green", "Black" ];
bands = [ "Linkin Park", "Led Zepplin",
          "Chvrches"
          ];

get "/" do
  ran_name = name.sample
  ran_home = home.sample
  ran_color = colors.sample
  ran_band = bands.sample


  erb :hwErb, locals:{
    name: ran_name,
    home: ran_home,
    band: ran_band,
    color: ran_color
  }


end
