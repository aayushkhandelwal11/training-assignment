def factorial(n)
result=1
2.upto(n) do |val|
result *= val
end
result
end
def pascal(max_row)
 0.upto(max_row) do |number|

    0.upto(number) do |r|

        print factorial(number)/( factorial(r) * factorial(number - r))
        print " "
end
puts "\n" 
end
end

puts 'How many rows do you want?'
answer = gets.chomp
  case answer
  when /^\d+$/
   pascal(answer.to_i) 
  else
    puts "Please enter a number "
  end

