require "sinatra"

set :public_folder, 'public'

get "/" do
  erb :"/index.html"
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end

get "/time" do
  time = Time.now.strftime("%H:%M:%S")
  "#{time}"
end

post "/form" do
  @name = params[:name]
end
