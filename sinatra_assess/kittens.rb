require "sinatra"

get '/:id1/:id2' do
  width = (params[:id1])
  height = (params[:id2]).to_i
  
  
  erb :kittens, locals:{height: height, width: width}
  
end
