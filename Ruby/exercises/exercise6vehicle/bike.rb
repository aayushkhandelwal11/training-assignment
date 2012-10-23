require_relative 'vehicle'
class Bike < Vehicle
 def initialize(name,price,dealer)
    super(name,price)
    @dealer = dealer
 end 
 def to_s
   puts "#{@name} has a price of #{@price} available at dealer #{@dealer}"
 end

end
