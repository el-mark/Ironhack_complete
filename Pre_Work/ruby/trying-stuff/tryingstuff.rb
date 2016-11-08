# in this first string, it is cut off after Sharon
require 'pry'

unescaped_string = 'This is Sharon s unescaped string'
puts unescaped_string
escaped_string = 'This is Sharon\'s escaped string'
puts escaped_string

movie = 'Finding Nemo'
puts "My favourite movie is #{movie}"

name = 'mr. Bond'
capitalized_name = name.capitalize
puts "Hello #{capitalized_name}"

flavours = 'chocolate, mint, strawberry, vanilla, caramel, chili'
flavours_array = flavours.split(', ')
puts flavours_array

length = 'How many characters are in this string?'.length
puts length

binding.pry

a = 'awesome'.include? 'you'
b = 'awesome'.include? 'me'
phrase = 'Just kidding, you’re awesome too'
c = phrase.include? 'aw'


d = """

a = 'awesome'.include? 'you'
b = 'awesome'.include? 'me'
phrase = 'Just kidding, you’re awesome too'
c = phrase.include? 'aw'

"""
puts d 
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"

age = 28
d=age.odd?
e=age.even?
puts d
puts e

age = 28.6
f = age.round(-1) # returns 30
g = age.round(0) 
h = age.round(1) # returns 28.0

puts f
puts g
puts h

3.times { puts 'beetlejuice' }

animals = [ 'Lions', 'Tigers', 'Bears' ]
puts animals 

my_array = []

my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array

my_array.delete_at 2

puts my_array

my_array << "D"

puts my_array

a1 = [4,6,2,4,7,12,9,12].sort
a2 = ['g', 'e', 'n', 'w', 'a'].sort

a3 = [a1].join(', ')

a4 = ["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join(', ')

puts a3
puts a4

my_hash = {}

my_hash["AS"] = "Asturias"
my_hash['GA'] = "Galicia"
my_hash['AQP'] = "Arequipa"

puts my_hash["AS"]
puts my_hash['GA']
puts my_hash['AQP']

puts my_hash

binding.pry

a5 = my_hash.select { |key, value| key.include?("P") }
puts a5

a6 ='what is this?'.class
a7 = 3.class
a8 = [1,2,3].class
a9 = a1.class
a10 = '123123123'.class

puts a6
puts a7
puts a8
puts a9
puts a10

binding.pry