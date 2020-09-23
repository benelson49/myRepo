class RockPaperScissors
class NoSuchStrategyError < StandardError ; end

def self.results(match1,match2)
  player1 = match1[1].upcase
  player2 = match2[1].upcase

  case player1

  when 'R'
    if player2 == 'R'
      match1
    else if player2 == 'S'
      match1
    else 
      match2
    end
  end
  when 'S'
    if player2 == 'S'
      match1
    else if player2 == 'P'
      match1
    else 
      match2
    end
  end
  when 'P'
    if player2 == 'P'
      match1
    else if player2 == 'S'
      match2
    else
      match2
    end
  end

  end
end

def self.game_winner(game)
 strategy = ['R','S','P']

 raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless 
 strategy.include? game[0][1].upcase
 raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless 
 strategy.include? game[1][1].upcase

 results(game[0],game[1])
end

def self.tournament_winner(tournament)
  if tournament[0][0].is_a? String
    
        return game_winner(tournament)
  end
    
    return game_winner([tournament_winner(tournament[0]),tournament_winner(tournament[1])])

end

end