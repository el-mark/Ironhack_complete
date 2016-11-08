require "pry"
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
  def display
  	puts "The name is: #{@name} and the cap is: #{@capacity}"
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]


sorted = homes.sort do |home1, home2|
  # Compare the two homes by their capacity
  home2.capacity <=> home1.capacity
end

sorted.each { |home| home.display }