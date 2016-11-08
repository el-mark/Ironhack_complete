require "pry"

class Person
	attr_accessor :age
	attr_reader :name
	
	def initialize name, age
		@name = name 
		@age = age
	end
end

jhon = Person.new "Jhon", 23
puts jhon.name
puts jhon.age

binding.pry

jhon.age = 25
puts jhon.age