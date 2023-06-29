#one argument
def say_hello(name)
    puts "hello, #{name}"
end
say_hello("collin")
puts "-----------------------"

#two arguments
def say(greeting, name)
    puts "#{greeting}, #{name}"
end 
say("hello", "collin")
puts "-----------------------"

#default values 
def say2(greeting = "Good Morning", name)
    puts "#{greeting}, #{name}"
end
say2("collin")
puts "-----------------------"

#keyword arguments
def say3(greeting:, name:)
    puts "#{greeting}, #{name}"
end 
say3(greeting: "good morning", name: "collin")
puts "-----------------------"

#default values with keyword arguments 
def say4(greeting: "hello", name:)
    puts "#{greeting}, #{name}"
end
say4(name: "collin")
puts "-----------------------"

#return values from methods
def some_method 
    2 + 2 
    puts "hello"
    5 * 5 
end 
result = some_method
result 
puts "-----------------------"

#method with if statement (modifier form) 
def check_input(num)
    return 0 if num.nil? 
    num 
end
check_input(7)
