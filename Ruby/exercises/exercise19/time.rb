class Time
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
  puts Time.parse("#{hours}:#{minutes}:#{seconds}")
  
end
end
