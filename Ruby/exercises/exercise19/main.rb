def add(array)
  arraynew= array.map{ |i| i.split(":").to_a }
  days=0;
  array=[0,0,0]
   arraynew.map do |array1|
     array1 = array1.collect{|i| i.to_i}
    array=[array,array1].transpose.map {|x| x.reduce(:+)}
   end
   
   if array[2]>59 
      array[1]+=array[2]/60
      array[2]=array[2]%60 
      
   end
   if array[1]>59 
       array[0]+=array[0]/60
      array[1]=array[1]%60 
   end
   if array[0]>23
     days=  array[0]/24 
      array[0]=array[0]%24
   end
   puts days.to_s + 'days' + array.join(":").to_s
end

array=Array.new()
loop do
  puts "enter the time(q to stop)"
  subject =gets.chomp
  pattern=/^(?:(?:([01]?\d|2[0-3]):)([0-5]?\d):)([0-5]?\d)$/
 case subject
 when 'q','Q'  
   add(array)
   break
 else
     time1 =pattern.match(subject)
     if(time1==nil)
         puts "invalid time"
     else
      array<<time1.to_s
      end
  end 
end     




