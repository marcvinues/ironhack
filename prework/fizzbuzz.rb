#iteration3
number = 1..100
number.each do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "#{i} - FizzBuzz"
      elsif i % 5 == 0
        puts "#{i} - Buzz"
      elsif i % 3 == 0
        puts "#{i} - Fizz"
      elsif  i.to_s.chars.first.include?('1')
      	puts "#{i} - Bang\n"
      elsif i.to_s.include?('10')
        puts "#{i} - BuzzBang\n"
    else
    	puts i
      end
   end

# number = 100
# s = number.to_s

# puts s.chars.first

