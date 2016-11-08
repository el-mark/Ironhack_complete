require "sinatra"
require	"sinatra/reloader"

get "/" do
	"My first webpage with Sinatra"
end

get "/author" do
	erb(:author)
end 

get "/hi" do
	@greetings = "Helooooooo Wolrd!!!!"
	erb(:hipage)
end 

get "/text" do
	erb(:jhon)
end 

get "/time" do
	time = Time.now
	@my_time = time.strftime("%H:%M:%S")
	erb(:time)
end 

get "/pizza" do
	@ingredients = ["tomato", "mozzarella", "anchovies", "olives"]
	erb(:pizza)
end

get "/users/:username" do
	@username = params[:username]
	erb(:user_profile)
end

get "/hours/ago/:hours_before" do
	@hours_before = params[:hours_before]
	@past_hour = (Time.now.strftime("%H")).to_i - @hours_before.to_i
	erb(:hours)
end
