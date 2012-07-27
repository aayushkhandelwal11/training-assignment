require_relative 'baseclass'
require_relative 'play'
k=BaseClass.new
k.save
k=Play.new()
k.age=12
k.save
l=Play.new()
l.save
k=Play.new()
k.age=12
k.fname="aayush"
k.email="aayush11"
k.save
l=Play.new()
l.age=13
l.fname="kuldeep"
l.email="kd11"
l.save
Play.find_by_fname("kuldeep")
Play.find_by_age("13")
Play.count