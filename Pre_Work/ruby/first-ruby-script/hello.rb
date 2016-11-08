puts "Hello, world!"

puts "I"
puts "like"
puts "pie."

print "Cookies"
print "are"
print "good"
print "too."

# This is a comment
puts "Hello, world!"

puts "Hello again!" # This also works for a comment

my_variable = 10

operation_result = 12 * 34
puts "Operation result is "
puts operation_result

puts "my_variable is "
puts my_variable

puts "Hello\nworld"
puts 'Hello\nworld'

name = "Mark"
puts "Hi #{name}"

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}."

puts "Give me a number"
first_number = gets.chomp.to_i
puts "Give me another number"
second_number = gets.chomp.to_i
puts "#{first_number} x #{second_number} = #{first_number * second_number}"

file_contents = IO.read("readme.txt")  
puts "The source file contains: #{file_contents}"

puts "What's your name?"
name = gets.chomp
IO.write('name.txt', name)