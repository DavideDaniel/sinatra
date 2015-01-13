# require "sinatra"

# get "/" do
# 	"<p>hello world</p>"
# 	"<h1>Yo</h1>"
# end


# # HOW TO AFFECT VARIABLES WITHOUT ACCESSORS IN RUBY
# # =================================================
# user_health = 10

# def add_health(health)
# 	health + 1
# end

# user_health = add_health(user_health)

# CODE BLOCKS, CLOSURES
# =====================
# # methods can't access variables but blocsk can

# name = "John"
# get "/" do
# 	name
# end

# # will result with name being displayed
