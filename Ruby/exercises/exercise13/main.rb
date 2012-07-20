def factorial(n)
   case n
  when 0..1 then 1
  else
    n * factorial( n - 1 )
  end
end
puts "enter the no for factorial"
answer = gets.chomp
  case answer
  when /^\d+$/
    puts factorial(answer.to_i)
  else
    puts "Please enter a number "
  end



