def factorial(n)
   case n
  when 0..1 then 1
  else
    n * factorial( n - 1 )
  end
end
puts 'enter the no'
answer = gets.chomp
  case answer
  when /^-?\d+$/
      if answer.to_i<0
         raise  'You must give me a positive no'
      else
         puts factorial(answer.to_i)
      end
  else
    raise  'You must give me a no'
  end
