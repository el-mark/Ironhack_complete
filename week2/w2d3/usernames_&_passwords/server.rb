require 'sinatra'
require 'sinatra/reloader'
require 'pry'

enable:sessions

get '/log_in' do
 	erb(:log_in)
end

post '/user_submit' do
  users_passwords = {"Mark" => "123",
    "Juan" => "123"}

  if params[:password] == users_passwords[params[:username]]
    session[:user] = params[:username]
    session[:log_in_boolean] = true
    redirect '/profile_page'
  end
  redirect '/log_in'
end

get '/profile_page' do
  if session[:log_in_boolean] == true
 	  erb(:profile_page)
  else
    redirect '/log_in'
  end
end

get '/log_out' do
 	erb(:profile_page)
  session[:log_in_boolean] = false
  redirect '/log_in'
end



# get '/memory' do
# 	erb(:memory)
# end
