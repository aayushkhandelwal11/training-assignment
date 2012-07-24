require 'studio_game/player'
require 'studio_game/treasure_trove'
module StudioGame
describe Player do
before do
@initial_health=150
@player =Player.new("larry",@initial_health)
end
it "can be created from a CSV string" do  
  player = Player.from_csv("larry,150")

  player.name.should == "Larry"
  player.health.should == 150
end
it "has a capitalized  name"do

@player.name.should=="Larry"
end
it "has same initial rank" do

@player.health.should==@initial_health
end
it "has a specialised fromat" do
 @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:hammer, 50))
@player.to_s.should=="Larry's health is 150 and score is 250"
end
it "increase health by 10" do

@player.woo
@player.health.should==@initial_health+10
end

it "decrease health by 10" do

@player.blam
@player.health.should==@initial_health-10
end
  context "checking whether the player is strong or not" do
  before do
  @initial_health=150
  @player =Player.new("larry",@initial_health)
  end
  it "player is strong" do
  @player.should be_strong
  end
  end
context "in a collection of players" do
   before do
    @player1 = Player.new("moe", 100)
    @player2 = Player.new("larry", 200)
    @player3 = Player.new("curly", 300)

    @players = [@player1, @player2, @player3]
   end
  
    it "is sorted by decreasing score" do
    @players.sort.should == [@player3, @player2, @player1]
  end
end
it "computes points as the sum of all treasure points" do
  @player.points.should == 0

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 50

  @player.found_treasure(Treasure.new(:crowbar, 400))
  
  @player.points.should == 450
  
  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 500
end
it "computes a score as the sum of its health and points" do
  @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:hammer, 50))
  
  @player.score.should == 250
end
it "yields each found treasure and its total points" do
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  
  yielded = []
  @player.each_found_treasure do |treasure|
    yielded << treasure
  end
  
  yielded.should == [
    Treasure.new(:skillet, 200), 
    Treasure.new(:hammer, 50), 
    Treasure.new(:bottle, 25)
 ]
end      
end
end
