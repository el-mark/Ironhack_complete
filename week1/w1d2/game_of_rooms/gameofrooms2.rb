require 'pry'

answer = 0
options = ["n", "e", "s", "w", "end"]
location = [1,1]
description = "You are in the center of a temple"


#class Location
#	attr_reader location:, description:
#	def initilize location description
#	location = []
#	@description = description
#end


#center_temple = Location.new 1,1 "You are in the center of a temple"
#north_temple = Location.new 1,2 "You are in the north of a temple"
#east_temple = Location.new 1, "You are in the east of a temple"
#south_temple = Location.new 1,1 "You are in the sauth of a temple"
#west_temple = Location.new 1,1 "You are in the west of a temple"

while answer != "end"
	puts "---------------------------------------------"
	puts " "
	puts description
	puts "what do you do?"
	puts options
	answer = gets.chomp
	
	if answer == "n" 
		location[1] = location[1] + 1
	elsif answer == "e"
		location[0] = location[0] + 1
	elsif answer == "s"
		location[1] = location[1] - 1
	elsif answer == "w"
		location[0] = location[0] - 1			
		

		
	else
	end
	#binding.pry
end

#binding.pry



