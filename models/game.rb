class Game

  def self.compare(hand1, hand2)
    if (hand1 == "rock" && hand2 == "scissors") ||
       (hand1 == "scissors" && hand2 == "paper") ||
       (hand1 == "paper" && hand2 == "rock")
       result = true
    elsif (hand2 == "rock" && hand1 == "scissors") ||
       (hand2 == "scissors" && hand1 == "paper") ||
       (hand2 == "paper" && hand1 == "rock")
       result = false
    else
       result = nil
    end
    self.winning_player(result)
  end

  def self.winning_player(result)
    return "draw" if result == nil
    return "player 1 wins" if result
    return "player 2 wins" if !result
  end

end
