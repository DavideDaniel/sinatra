require "sinatra"

celebs =  ["Angelina Jolie", "Brad Pitt", "Morgan Freeman", "Jim Carrey" ]

get '/' do
  mystring = "<html><body><ul>"

  celebs.each do |each|
    mystring+= "<li>#{each}</li>"
  end

  mystring += "</ul></body></html>"

end
