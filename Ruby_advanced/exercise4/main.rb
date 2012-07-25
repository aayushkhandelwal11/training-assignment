Shoppingitem= Struct.new(:name,:quantity)
class MyShoppingList
  def initialize
  puts "hello"
  @list=[]
  
  end
  def add(name,quantity)
     product=Shoppingitem.new(name,quantity)
     @list.push(product)
  end
  def checkout
  @list.each do |val|
    puts "#{val.quantity} of #{val.name}"
  end
  end

end
shoppinglist=MyShoppingList.new
loop do
   puts "Enter the item"
  name=gets.chomp
   case name
    when 'q'
        shoppinglist.checkout()
      break
    else
        puts "Enter the quantity"
        quantity=gets.chomp
        shoppinglist.add(name,quantity)
        
   end
end   

