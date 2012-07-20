require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'
module GameTurn
   def self.take_turn(player)
     die=Die.new
     case die.roll
     when 5..6
     player.woo
     puts "#{player.name} is wooted"
     when 3..4
  
     puts "#{player.name} is skipped"
     else
     puts "#{player.name} is blammed"
     player.blam
     end  
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
   end
end
