require 'time'
def sum_time(time_array)
  days = 0
  hours = 0
  minutes = 0
  seconds = 0
  time_array.length.times do |count|
    temp_time = Time.parse(time_array[count])
     seconds = seconds + temp_time.sec
     minutes = minutes + temp_time.min
     hours = hours + temp_time.hour
     if seconds > 60  then minutes+=1 ; seconds=seconds%60 end 
     if minutes > 60  then hours+=1 ; minutes=minutes%60 end
     if hours > 24  then days+=1 ; hours=hours%24 end  
    
  end
  print "#{days} days & " if days > 0
  puts Time.parse("#{hours}:#{minutes}:#{seconds}").strftime('%T')
  
end


array=Array.new()
loop do
  puts "enter the time(q to stop)"
  subject =gets.chomp
  pattern=/^(?:(?:([01]?\d|2[0-3]):)([0-5]?\d):)([0-5]?\d)$/
 case subject
 when 'q','Q'  
    sum_time(array)
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

