require_relative 'power'
arr=[1,6,3,7,89]
puts arr.to_s
array=Power.new(arr)
puts "enter the power"
answer=gets.chomp
  case answer
  when /^\d+$/
    puts array.pow!(answer.to_i).to_s
  else
    puts "Please enter a number or 'quit'"
  end

