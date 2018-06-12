require("minitest/autorun")
require_relative("../models/game.rb")

class TestGame < MiniTest::Test

  def test_game__rock_scissors
    assert_equal("player 1 wins", Game.compare("rock", "scissors"))
  end



end
