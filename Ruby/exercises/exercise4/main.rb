def palindrome(string)
reversestring=string.reverse

  if reversestring==string
    puts "Its an palindrome"
  else
    puts "its not an palindrome"
  end
end


loop do
  puts "enter the word"
  answer = gets.chomp.downcase
  case answer
  when 'q','Q'
    break
  else
    palindrome(answer.to_s)
  end
end
