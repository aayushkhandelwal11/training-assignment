class Customer
  @@ids = 0
  def initialize(name)
    @name=name
    @balance=1000
     @@ids +=1
     @accountno = @@ids
  end
  def deposit(amount)
    @balance += amount
  end
  def withdraw(amount)
    @balance -= amount
  end 
  def to_s
    puts "#{@name} has an account no #{@accountno} with a balance of #{@balance}"
  end
end
