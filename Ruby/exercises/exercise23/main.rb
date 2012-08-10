list={}
readfile= File.open("database.txt", "r")
readfile.each do |line|
   array=line.split(",").to_a
    list[array[2]] ||+="#{array[0]}Empid(#{array[1]})"
  
end
puts list

