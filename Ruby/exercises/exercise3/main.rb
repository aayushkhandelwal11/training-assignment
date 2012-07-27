
puts "enter the name"
subject =gets.chomp
pattern=/[aeiouAEIOU]/
result = subject.gsub(pattern, "*")
puts result
