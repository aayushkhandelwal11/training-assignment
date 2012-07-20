def factorial(n)
  if n<= 1
    1
  else
    n * factorial( n - 1 )
  end
end
def nCr(n,r)
     numerator   = factorial(n)
     denominator = factorial(r) * factorial(n - r)

    numerator / denominator
end

def pascal(max_row)
 1.upto(max_row) do |number|

    0.upto(number) do |r|

        yield nCr(number,r)
        yield "  "
end
yield "\n" 
end
end

puts 'How many rows do you want?'
answer = gets.chomp
  case answer
  when /^\d+$/
   pascal(answer.to_i) {|x| print "#{x}"}
  else
    puts "Please enter a number "
  end

