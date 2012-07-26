class StringExtended <String
   def initialize (value)
     @value= value
   end
   def exclude?(pattern)
     ! @value.include? pattern[0].to_s
   end
   def multiplier( n=1 )

    @value.each_char {|i|  print i*n[0].to_i}
   end
   
   def replace(old)
   puts old[0]
   puts old[1]
   puts @value.gsub(old[0].to_s,old[1].to_s)
 
    end
   def to_s
     puts "#{@value}"
   
   end
end


