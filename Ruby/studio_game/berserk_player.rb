require_relative 'player'

class BerserkPlayer < Player
def initialize(name,health)
super(name,health)
@wootcount=0
end
def berserk?
  @wootcount>5
end
def blam
if berserk?
woo
else
super()
end
end
def woo

@wootcount +=1
 puts "#{@name} is berserk!" if berserk?
super()
end 

end


if __FILE__ == $0
  berserker = BerserkPlayer.new("berserker", 50)
  6.times { berserker.woo }
  2.times { berserker.blam }
  puts berserker.health
end
