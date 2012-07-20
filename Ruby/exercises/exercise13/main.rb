def factorial(n)
   case n
  when 0..1 then 1
  else
    n * factorial( n - 1 )
  end
end
puts "enter the no for factorial"
word=gets.chomp
puts factorial(word.to_i)


