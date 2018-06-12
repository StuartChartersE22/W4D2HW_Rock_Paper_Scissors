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
    self.winning_player(result, hand1, hand2)
  end

  def self.winning_player(result, hand1, hand2)
    return "Draw" if result == nil
    return "Player 1 wins with #{hand1}" if result
    return "Player 2 wins with #{hand2}" if !result
  end

end
