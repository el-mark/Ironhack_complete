def say_hello(name)
  puts "Hello, #{name}!"
end

say_hello("Rafa")
say_hello("Xavi")

def add(a, b)
  puts a + b
end

add((5 * 5), (5 + 3))

add((3 + 4) * 10, (8 - 4) / 2)

def taste food 
  if food == "bacon"
    puts "Yummy!!! BACON!!!"
  else 
  	puts "Does it taste good?"
  end
end

taste "spinach"
taste "bacon"

#def square number 
#  number * number
#end
# 
# puts square 4

def multiply(a,b)
  a * b
end
puts multiply(4, 2) # it will return 8

puts "--------------"

def square(number)
  puts number * number
end

square(4) # nil

def sq(a)
  puts a * a
end

sq(5)

puts "--------------"

def add(a, b)
  calc1 = a + a
  calc2 = a + b
  calc3 = b + b
  return calc1, calc2, calc3
end

puts add(1,  5)

def square2(num)
  sqr_num = num * num
  if sqr_num > 100
    return "Number too big!!"
  end
  sqr_num
end

puts square2(9) 
puts square2(20) 