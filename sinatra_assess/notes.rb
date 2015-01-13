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

# LOOPING TO BUILD HTML
# =====================

# get '/' do
#   mystring = "<html><body><ul>"
#   mystring += "<li>sonny</li>"
#   mystring += "<li>cher</li>"
#   mystring += "</ul></body></html>"
#   return mystring
# end

# YOU CAN DO RUBY INSIDE ERB FILES
# ================================

# <html>
# <body>
# <ul>
#   <% names.each do |name| %>
#   <li><%=name%></li>
#   <% end %>
# </ul>
# </body>
# </html>

# LOOPING IN HTML
# ===============

# <html>
#     <body>
#         <ul>
#             <% heights = (height..height+14) %>
#             <% heights.each do |height| %>

#             <img src="http://placekitten.com/g/<%= width %>/<%= height %>">
#             <% end %>
#         </ul>
#     </body>
# </html>


# <html>
#     <body>
#         <ul>
#             <% (1..15).each do |i| %>
#             <%  height+=50 %>

#             <img src="http://placekitten.com/g/<%= width %>/<%= height %>">
#             <% end %>
#         </ul>
#     </body>
# </html>