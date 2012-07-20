require_relative 'bike'
vehicle1 = Vehicle.new("i10",30000)
puts vehicle1.to_s
bike1 = Bike.new("stunner",8900,"ms honda")
puts bike1.to_s
vehicle1.change_price(45000)
puts vehicle1.to_s
bike1.change_price(7800)
puts bike1.to_s
