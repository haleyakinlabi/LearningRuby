#times
20.times do 
    puts "I'm looping..."
end 

#upto
1.upto(10) do 
    puts "going up"
end 

#upto/syntax change 
1.upto(10) { |n| puts n }

#downto
10.downto(2) { |n| puts n}

#while loops 
num = 0 

while num <= 50 
    puts "not greater than or equal to 50 yet...."
    num += 1
end 

#until loops 
num = 5

until num > 50 
    puts "not there yet..."
    num += 1 
end

#.each 
nums = [1, 2, 3, 4, 5]

nums.each { |num| puts num }

nums.each do |num| 
    puts num 
end 

#.map/abs 
negative_nums = [-1, -2, -3, -4, -5]

positive_nums = negative_nums.map { |num| num.abs}


def some_numbers(arr_of_nums, &code_block)
    arr_of_nums.each { |num| code_block.call(num) }
end 

some_numbers(negative_nums) do |num| 
    puts num.abs
end 