#!/usr/bin/env ruby
puts "Enter the code (blank to evaluate /q to exit)"
string="#!/usr/bin/env ruby\n"
loop do
  answer=gets.chomp
   case answer
    when 'q'
        puts eval(string)
      break
    else
        if(answer.length>0)
          string<<answer<<"\n"
        else
          result=eval(string)
          string="#!/usr/bin/env ruby\n"
        end
   end
end   
