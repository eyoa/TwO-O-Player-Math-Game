require './player'

class Game
  attr_accessor :player1, :player2, :current_player
  attr_reader :player1, :player2
  def start_game
    self.player1 = Player.new('Player 1')
    self.player2 = Player.new('Player 2')
    self.current_player = player1
    game_turns
  end

  private

  def game_turns
    puts "Welcome to the simple Math game"
    while !player1.dead? && !player2.dead?
      puts "----- NEW TURN -----"

      outcome = question
      
      if !outcome
        self.current_player.lose_life
      end

      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"

    end
    puts "game over"
  end

  def question
    num1 = rand(21)
    num2 = rand(21)
    correct_answer = num1 + num2
    puts "#{self.current_player.name}: What does #{num1} plus #{num2} equal?"
    player_answer = gets.chomp
    
    if player_answer.to_i == correct_answer
      puts "YES! You are correct!"
      return true
    else 
      puts "Seriously? No!"
      return false
    end
  end

end


game = Game.new
game.start_game