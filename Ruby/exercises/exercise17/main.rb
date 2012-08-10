require 'time'
def sum_time(time1,time2)
  temp_time1=Time.parse(time1)
  temp_time2=Time.parse(time2)
  seconds = temp_time2.sec + temp_time1.sec
  minutes = temp_time2.min + temp_time1.min
  hours = temp_time2.hour + temp_time1.hour
  days=0
     if seconds > 60  then minutes+=1 ; seconds=seconds%60 end 
     if minutes > 60  then hours+=1 ; minutes=minutes%60 end
     if hours > 24  then days+=1 ; hours=hours%24 end  

  print "#{days} days & " if days > 0
  puts Time.parse("#{hours}:#{minutes}:#{seconds}").strftime('%T')
  
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
    sum_time(time1.to_s,time2.to_s)
  end
