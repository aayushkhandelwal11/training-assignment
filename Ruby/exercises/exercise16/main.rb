def find(sentence,word)
array= sentence.split(" ").to_a
count =0
array.map! do |i| 
if i==word 
count+=1 
i="("+i+")"

else
i
end
end
puts array.join(" ")
puts count
end
puts "enter the sentence"
sentence= gets.chomp
puts "enter the word"
word= gets.chomp
find(sentence,word)
