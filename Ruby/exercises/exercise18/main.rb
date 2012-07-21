def area(*args)
  if args.length == 1
    puts 3.14*args[0]*args[0]
  elsif args.length == 2
    puts args[0]*args[1]
  else 
   a=args[0]
   b=args[1]
   c=args[2]
   s=(a+b+c)/2
   puts Math.sqrt((s*(s-a)*(s-b)*(s-c)))
  end
end



puts '1.circle  2.rectangle 3.triangle'
answer = gets.chomp
  case answer
  when '1'
     puts "enter the radius"
     answer1=gets.chomp
     area(answer1.to_i)
  when '2'
     puts "enter the first side"
     answer1=gets.chomp
     puts "enter the second side"
     answer2=gets.chomp
     area(answer1.to_i,answer2.to_i)
  when '3'
     puts "enter the first side"
     answer1=gets.chomp
     puts "enter the second side"
     answer2=gets.chomp
     puts "enter the third side"
     answer3=gets.chomp
     area(answer1.to_i,answer2.to_i,answer3.to_i)  
  else
    puts "Please enter a valid choice "
  end
  

