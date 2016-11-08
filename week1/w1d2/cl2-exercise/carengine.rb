class Car
	def initialize engine
		@noise = "Prmmm"
		@engine = engine
	end

	def make_noise
		puts @noise  
		puts @engine.make_noise
	end

end
class Engine
	def initialize noise
		@noise = noise
	end
	def make_noise
		puts @noise
	end
end


smallengine = Engine.new "Butm"

coolcar = Car.new(bigengine = Engine.new("BRUUMMMMM"))
coolcar.make_noise