require_relative 'name'
puts "Enter first name"
first= gets.chomp
puts "Enter last name"
last= gets.chomp
name=Name.new(first,last)
puts name.to_s
