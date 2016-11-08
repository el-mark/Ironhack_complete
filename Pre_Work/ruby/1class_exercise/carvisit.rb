class Car

	def initialize 
  	@city=[]
  end
  def visit_city city
    @city.push(city)
  end
  def cities
    puts @city
  end
end

blue_car = Car.new

blue_car.visit_city("Barcelona")
blue_car.visit_city("Mardid")
blue_car.visit_city("Roma")

blue_car.cities



