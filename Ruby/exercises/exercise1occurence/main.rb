require_relative 'occurence'
  puts "\nEnter the word"
  answer = gets.chomp.downcase
  occur =Occurence.new
  occur.count_string(answer)
  puts occur.output 
