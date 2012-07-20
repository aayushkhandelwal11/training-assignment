require 'mathn'
def prime(n)
  1.step(n, 2) { |i| if i.prime? then puts i  end }


end


puts 'till how many you want prime no?'
answer = gets.chomp
  case answer
  when /^\d+$/
   prime(answer.to_i) {|x| print "#{x}"}
  else
    puts "Please enter a number "
  end
