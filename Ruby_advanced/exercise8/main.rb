require_relative 'hello'
h=Hello.new
puts "new greet"
h.greet
puts "without logging"
h.greet_without_logging
puts "with logging"
h.greet_with_logging
h.put?
h.put_without_logging?

