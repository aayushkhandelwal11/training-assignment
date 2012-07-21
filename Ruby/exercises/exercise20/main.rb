require_relative 'intrest'
puts "enter principal"
p=gets.chomp.to_i
puts "enter time"
t=gets.chomp.to_i
intrest=Intrest.new(p,t)
puts intrest.differ

