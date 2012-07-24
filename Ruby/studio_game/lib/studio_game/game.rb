require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'
require 'csv'
module StudioGame
class Game
attr_reader :name
def initialize(name)
@name=name
@players=[]
end

def add_player(player)
@players.push(player)
end
def play(number_of_times)
treasures = TreasureTrove::TREASURES
puts "\nThere are #{treasures.size} treasures to be found:"
treasures.each do |treasure|
  puts "A #{treasure.name} is worth #{treasure.points} points"
end
puts("their are #{@players.size} players in #{@name}")
@players.each do |player|
puts player
end
1.upto(number_of_times) do |number|
puts "\nround #{number}"
  if block_given?
    break if yield
   end
   @players.each do |player|
  
    GameTurn.take_turn(player);
    puts player
   end

end
end
def high_score_entry(player)
    formatted_name = player.name.ljust(20, '.')
    "#{formatted_name} #{player.score}"
end
def save_high_scores(to_file="high_scores.txt")
  File.open(to_file, "w") do |file|
    file.puts "#{@title} High Scores:"
    @players.sort.each do |player|
      file. puts high_score_entry(player)
    end
  end
end

def load_players(from_file)
  CSV.foreach(from_file) do |row|
    player = Player.new(row[0], row[1].to_i)
    add_player(player)
  end
end
def print_name(player)
    puts "#{player.name} (#{player.health})"
end
def print_stats
  strong_players, wimpy_players = @players.partition { |player| player.strong? }
  puts "\n#{@name} Statistics:"

  puts "\n#{strong_players.size} strong players:"
  strong_players.each do |player|
     print_name(player)
  end    

  puts "\n#{wimpy_players.size} wimpy players:"
  wimpy_players.each do |player|
     print_name(player)
  end
   puts "\n#{@name} High Scores:"
   @players.sort.each do |player|
       puts high_score_entry(player)
  end
  @players.sort.each do |player|
  puts "\n#{player.name}'s point totals:"
  player.each_found_treasure do |treasure|
    puts "#{treasure.points} total #{treasure.name} points"
  end
  puts "#{player.points} grand total points"
end 
end
def total_points
  @players.reduce(0) { |sum, player| sum + player.points }
end

end
end
