def add(time1,time2)
array1=time1.split(":").to_a
array2=time2.split(":").to_a
array1 = array1.collect{|i| i.to_i}
array2 = array2.collect{|i| i.to_i}
array=[array1,array2].transpose.map {|x| x.reduce(:+)}
if array[2]>59 
 array[2]-=60 
 array[1]+=1
end
if array[1]>59 
 array[1]-=60 
 array[0]+=1
 end
if array[0]>23
puts "1 day "
array[0]-=24 
puts array.join(":")
end
end



puts "enter the first time"
subject =gets.chomp
pattern=/^(?:(?:([01]?\d|2[0-3]):)([0-5]?\d):)([0-5]?\d)$/
time1 =pattern.match(subject)
puts "enter the second time"
subject =gets.chomp
time2 =pattern.match(subject)
if(time1==nil||time2==nil)
puts "invalid time"
else
add(time1.to_s,time2.to_s)
end
