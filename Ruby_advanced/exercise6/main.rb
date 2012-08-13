require 'csv'
puts "Enter csv file name "
file_name=gets.chomp

class_name=file_name.split(".csv")[0].capitalize
rowcount=0
class_name =Object.const_set(class_name, Class.new )
list=nil
listofobject=[]
CSV.foreach(file_name) do |row|
  if rowcount==0
    rowcount=1
    list=row
    class_name.module_eval do
      attr_accessor *row
      define_method(:initialize) do |*values|
        row.each_with_index do |varname,i|
          instance_variable_set("@"+varname, values[i])
        end
      end
    define_method(:to_s) do
      s = ""
      row.each do |varname|
        s << varname + "=" + instance_variable_get("@"+varname).to_s + "  "
      end
      return s
    end
  end 
  else
    ob = class_name.new  
    list.each_with_index do |varname,i|
      ob.instance_variable_set("@"+varname, row[i])
    end
    print "You entered: "
    puts ob.to_s 
    listofobject<<ob
  end
end
