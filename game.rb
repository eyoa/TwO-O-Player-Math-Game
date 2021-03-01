require './player'
class Game
  attr_accessor :player1, :player2, :current_player
  attr_reader :player1, :player2

  def start_game
    self.player1 = Player.new('Player 1')
    self.player2 = Player.new('Player 2')
    self.current_player = player1
    self.game_turns
  end

  def game_turns
    puts "Welcome to the simple Math game"
    puts player1.name
    puts player1.lives

  end

end


game = Game.new
game.start_game