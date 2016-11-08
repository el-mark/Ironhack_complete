cities = ["miami", "lima", "quito"]
cities2 = cities.map do |city|
	city.capitalize
end
# cities2 = cities.map {|city| city.capitalize}
puts cities2