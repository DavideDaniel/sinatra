require "sinatra"

get "/name" do
	erb :name, locals: {name: "David"}
end

get "/" do
	erb :index
end
