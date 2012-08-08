s=String.new("hello")
def s.hello
puts "hello"
end
class << s
 def bye
   puts "bye"
 end 
end
s.hello
s.bye
"kj".bye
"kj".hello

