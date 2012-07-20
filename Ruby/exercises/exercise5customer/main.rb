require_relative 'customer'

customer1 =Customer.new("aayush")
customer1.deposit(100)
puts customer1.to_s
customer2 =Customer.new("KD")
customer2.withdraw(500)
puts customer2.to_s
customer3 =Customer.new("Abhi")
customer3.withdraw(500)
puts customer3.to_s
customer3.deposit(200)
puts customer3.to_s
