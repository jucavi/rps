#!/lib/game/rules.rb

module Rules

  RPS = {
    scissors: [:rock],
    rock: [:paper],
    paper: [:scissors]
  }

  RPSSL = {
    scissors: [:rock, :spock],
    rock:   [:paper, :spock],
    paper: [:scissors, :lizard],
    spock: [:paper, :lizard],
    lizard: [:scissors, :rock]
  }
end
