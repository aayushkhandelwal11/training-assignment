
def occurence(string)
hash_occur=Hash.new(0)
string.each_byte do |c|

case c
    
   when  97..122 then hash_occur["lowercase"]  +=1 
   when 48..57 then hash_occur["digit"]  +=1 
   when 65..90 then hash_occur["uppercase"]  +=1 
   else hash_occur["special cahracter"]  +=1 
end
end
puts hash_occur
end    

occurence("aa\f;^%34sdf#4213@ADDsd")
