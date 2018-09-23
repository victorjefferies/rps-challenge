class Game

  attr_reader :rock_result, :paper_result, :scissors_result 
  
  def rock_result
    comp_result = comp
    if comp_result == "rock"
      "It's a draw"
    elsif comp_result == "paper"
      "You chose badly, computer wins!"
    else
      "You beat scissors!"
    end
  end

  def paper_result
    comp_result = comp
    if comp_result == "paper"
      "It's a draw"
    elsif comp_result == "scissors"
      "You chose badly, computer wins!"
    else
      "You beat rock!"
    end
  end

  def scissors_result
    comp_result = comp
    if comp_result == "scissors"
      "It's a draw"
    elsif comp_result == "rock"
      "You chose badly, computer wins!"
    else
      "You beat paper!"
    end
  end

  def comp 
    ["rock", "paper", "scissors"].sample
  end
end
