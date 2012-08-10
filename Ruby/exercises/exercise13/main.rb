def factorial(num)
  (1..num).inject {|fact, n| fact * n}
end
puts "enter the no for factorial"
answer = gets.chomp
	case answer
  when /^\d+$/
    puts factorial(answer.to_i)
  else
    puts "Please enter a number "
  end



