class Car
	def initialize noise
		@noise = noise
	end
	def make_noise
		puts @noise 
	end
end
class RacingCar < Car
	def initialize
		@noise = "BRUUUUUM"
	end
end
my_car= Car.new "bruumm"
my_car.make_noise
my_racingcar= RacingCar.new 
my_racingcar.make_noise