list=Hash.new(Array.new)
readfile= File.open("database.txt", "r")
  readfile.each do |line|
    array=line.split(",").to_a
    list[array[2].gsub(/\s/, "")] += ["#{array[0]}  Empid(#{array[1]})"]
  end
writefile=File.open("Employee.txt", "w")
   list.sort.each do |key, value|
     writefile.puts "#{key}s:"
     writefile.puts value
     writefile.puts 
   end
writefile.close
readfile.close

