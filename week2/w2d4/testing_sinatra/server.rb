require "sinatra"
require 'sinatra/reloader'
require 'pry'

get '/' do
 	erb(:space)
end
get '/real_page'do
  "The other page"
end
get '/hi' do
  redirect 'real_page'
end
