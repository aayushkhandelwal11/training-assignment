readfile= File.open("database.txt", "r")
myfile = File.open("employee.txt", "w")
myfile.puts("Designers:\n")
readfile.each do |line|
   array=line.split(",").to_a
   puts array[2]
   val="Designer\n"
   if array[2]==val
   string=array[0].to_s+'(Empid:'+array[1]+')'
   myfile.puts string
   end
end
readfile.close
readfile= File.open("database.txt", "r")
myfile.puts("\n\n\nDeveloper:\n")
readfile.each do |line|
   array=line.split(",").to_a
   if array[2].to_s=="Developer\n"
   string=array[0].to_s+'(Empid:'+array[1]+')'
   myfile.puts string
   end
end
readfile.close
myfile.close
