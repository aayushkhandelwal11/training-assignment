def find(sentence,pattern)
	puts sentence.gsub!(/(?<match>#{pattern})/i, '(\k<match>)') 
  puts sentence.scan(/#{pattern}/i).length
end
puts "enter the sentence"
sentence= gets.chomp
puts "enter the word"
word= gets.chomp
find(sentence,word)
