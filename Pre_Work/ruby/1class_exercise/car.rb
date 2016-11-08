class Car

	def initialize noise
      @noise = noise
  end
	def make_noise
		puts @noise
	end
end

class NoiseMaker
	
	def self.make_noise car
		2.times {car.make_noise}
	end
end


quite_car = Car.new "Ssss..."
noisy_car = Car.new "BROOOOOOM"

NoiseMaker.make_noise quite_car 
NoiseMaker.make_noise noisy_car 
