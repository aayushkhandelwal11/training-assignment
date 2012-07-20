require_relative 'treasure_trove'
class Player
attr_accessor :name
attr_reader :health
def initialize(name,health=0)
@name=name.capitalize
@health=health
@found_treasures = Hash.new(0)
end
def woo
@health+=10
end

def blam
@health-=10

end
def score
  @health+  points
end
def self.from_csv(string)
  name, health = string.split(',')    
  new(name, Integer(health))
end
def found_treasure(treasure)
@found_treasures[treasure.name] += treasure.points
puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
puts "#{@name}'s treasures: #{@found_treasures}"
end

def to_s
   "#{@name}'s health is #{@health} and score is #{score}"
end
def strong?
  @health > 60 
end
def <=>(other)
    other.health <=> health 
end
def points
    @found_treasures.values.reduce(0, :+)
end 
def each_found_treasure
    @found_treasures.each do |name, points|
      yield Treasure.new(name, points)
    end
end
end

if __FILE__ == $0
  player = Player.new("moe",40)
  puts player.name
  puts player.health
  player.woo
  puts player.health
  player.blam
  puts player.health
end
