class Employee
@@arremp=[]
def initialize(name,empid,designation)
  @name=name
  @empid=empid
  @designation=designation
end

def load_employee(from_file="employes.txt")
  CSV.foreach(from_file) do |row|
    employee = Employee.new(row[0], row[1].to_i,row[2])
    @arremp<< employee
  end
end
def writetofile(to_file="high_scores.txt")
  File.open(to_file, "w") do |file|
    file.puts "#{@title} High Scores:"
    @arremp.sort.each do |player|
      file. puts high_score_entry(player)
    end
  end
end
end
