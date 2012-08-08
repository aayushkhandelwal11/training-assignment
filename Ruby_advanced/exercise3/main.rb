class PublicCode

end
puts "Enter the name of the method"
method_name=gets.chomp

PublicCode.class_eval do
   puts "Enter the code for it"
   code=gets.chomp
    define_method method_name do
     eval (code)
    end
end
a=PublicCode.new
a.send(method_name)


