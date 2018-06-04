class Game
  attr_accessor :player1, :player2
  attr_reader :result
  def initialize (player1,player2)
    @player1 = player1
    @player2 = player2_autopick()
  end

  def play ()

    case

    when @player1 == 'paper' && @player2 == 'rock' then  result = 'paper wins!'
    when @player1 == 'paper' && @player2 == 'scissors' then  result = 'scissors wins!'
    when @player1 == 'rock' && @player2 == 'paper' then result = 'paper wins!'
    when @player1 == 'rock' && @player2 == 'scissors' then result = 'rock wins!'
    when @player1 == 'scissors' && @player2 == 'paper' then result = 'scissors wins!'
    when @player1 == 'scissors' && @player2 == 'rock' then result = 'rock wins!'
    else  result = "It's a draw!"

    end

      return "Computer picked: #{@player2}, #{result}"

  end

  def player2_autopick()
    array = %w[rock paper scissors]
    return array.sample
  end

end
