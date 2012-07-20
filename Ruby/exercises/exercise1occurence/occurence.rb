class Occurence

def initialize
 @hash_occur = Hash.new(0)
 end
 
 def count_string(string)
  string.split("").each do |i|
  
    @hash_occur[i] +=1  
  
  end
end
 
 def output
   @hash_occur
 end
 
end
