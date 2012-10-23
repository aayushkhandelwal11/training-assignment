class Vehicle
  def initialize(name,price) 
    @name = name
    @price = price
  end
  def change_price(price)
    @price = price
  end
  def to_s
    puts "#{@name} vehicle has a price of #{@price}"
  end
end
