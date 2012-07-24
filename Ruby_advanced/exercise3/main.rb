class PublicCode

end
puts "Enter the name of the method"
method_name=gets.chomp

PublicCode.instance_eval do
   puts "Enter the code for it"
   @code=gets.chomp
    def method_name
     eval (@code)
    end
end
PublicCode.method_name
