numbers = [1,2,3]
for element in numbers
  puts "-> #{element}"
end

string = ""

# While the string's length is less than 10
while string.length < 10
  # Add an 'a'
  string = string + 'a'
end

puts "The final string is #{string}"

my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
  puts "#{key} stands for #{value}"
end