require('minitest/autorun')
require('minitest/rg')

require_relative('../models/game')

class TestGame < MiniTest::Test


  def Test_paper_vs_scissors
    @player1 = "paper"
    @player2 = "scissors"
    @game = Game.new(@player1, @player2)

    result = @game.play()
    assert_equal("scissors win", result)

  end

  def test_rock_vs_scissors
    @player1 = "rock"
    @player2 = "scissors"
    @game = Game.new(@player1, @player2)

    result = @game.play()
    assert_equal("rock wins!", result)
  end

  def test_rock_vs_paper
    @player1 = "rock"
    @player2 = "paper"
    @game = Game.new(@player1, @player2)

    result = @game.play()
    assert_equal("paper wins!", result)
  end

  def test_draw
    @player1 = 'rock'
    @player2 = 'rock'
    @game = Game.new(@player1, @player2)

    result = @game.play()
    assert_equal("It's a draw!", result)
  end
end
