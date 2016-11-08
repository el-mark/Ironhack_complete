require "sinatra"
require	"sinatra/reloader"
require	"artii"
require "pry"

get '/ascii/:word/?:font?/?:secret?' do

 	@word = params[:word]
	@font = params[:font]
	@secret = params[:secret]
	@key = 0

	if @font == nil

 		@font = "epic"

 	elsif @font == "special" && @word == "lizard" && @secret == "secret"

 		@font = "avatar" 
 		@key = 1			

 	end

	a = Artii::Base.new :font => @font
	@print = a.asciify(@word)

 	erb(:word)

end