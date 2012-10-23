require_relative 'occurence'
  puts "\nEnter the word"
  answer = gets.chomp.downcase.gsub(/\s+/, "")
  occur = Occurence.new
  occur.count_string(answer)
  puts occur.output 
