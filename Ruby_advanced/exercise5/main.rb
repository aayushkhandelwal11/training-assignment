require_relative 'string_extended'
puts "Declare the object for class(StringExtended.new('value'))"
r=eval(gets.chomp)
puts r.to_s
puts "enter the code"

array = gets.chomp.split(" ").to_a
a=array[0]
array.shift
puts r.send(a,array)


