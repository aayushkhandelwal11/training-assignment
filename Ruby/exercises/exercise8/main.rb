class Array
  def power(factor)
    self.map { |x| x **factor }   
  end
end  
arr=[1,6,3,7,89]
puts arr.to_s
puts "enter the power"
answer=gets.chomp
  case answer
  when /^\d+$/
    puts arr.power(answer.to_i).to_s
  else
    puts "Please enter a number or 'quit'"
  end

