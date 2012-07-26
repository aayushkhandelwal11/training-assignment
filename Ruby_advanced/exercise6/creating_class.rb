require 'csv'
rowcount=0
CSV.foreach("players.csv") do |row|
  if rowcount==0
  puts"first line"
  rowcount=1
  else
  puts row.to_s
  end
end
