class Car
	def initialize 
		@engine = Engine.new
	end

	def start 
		@engine.move_pistons
	end
end

class Engine
	def move_pistons
		puts "pushhhh"
	end
end


cputs Car.new.star
