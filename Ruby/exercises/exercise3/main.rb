
puts "enter the name"
subject =gets.chomp
pattern=/[aeiou]/
result = subject.gsub(pattern, "*")
puts result
