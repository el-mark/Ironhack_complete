require "sinatra"
require	"sinatra/reloader"

get "/add" do
  erb(:add)
end

post "/calculate_add" do
  # add numbers here
end
