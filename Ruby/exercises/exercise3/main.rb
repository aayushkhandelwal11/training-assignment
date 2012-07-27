
puts "enter the name"
subject =gets.chomp.downcase
pattern=/[aeiou]/
result = subject.gsub(pattern, "*")
puts result
