require("minitest/autorun")
require_relative("../models/game.rb")

class TestGame < MiniTest::Test

  def test_game__player_1_wins
    assert_equal("player 1 wins", Game.compare("rock", "scissors"))
  end

  def test_game__player_2_wins
    assert_equal("player 2 wins", Game.compare("paper", "scissors"))
  end

  def test_game__draw
    assert_equal("draw", Game.compare("rock", "rock"))
  end



end
