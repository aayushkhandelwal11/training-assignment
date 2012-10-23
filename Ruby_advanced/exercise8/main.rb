require_relative 'hello'
h=Hello.new
Hello.hellos
puts "new greet"
h.greet
puts "without logging"
h.greet_without_logging
puts "with logging"
h.greet_with_logging
h.put?
h.put_without_logging?
puts "LIST of Protected Members"
puts h.protected_methods-Object.protected_methods
puts "LIST of Private Members"
puts h.private_methods-Object.private_methods
puts "LIST of Public Members"
puts h.public_methods-Object.public_methods
