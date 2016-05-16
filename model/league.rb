require_relative( 'team.rb' )
require_relative( 'match.rb' )
require_relative( 'player.rb' )

class league

  def league_table

    @matches = [match1, match2 etc.]
    match1 = Match.new({'home_team_id' => team1.id, 'away_team_id' => team2.id, 'home_team_score' => 3, 'away_team_score' => 2})

    for match in @matches
      winning_teams = []
      if match['home_team_score'] > match['away_team_score']
        winning_teams << [ match['home_team_id'] ]
      else
        winning_teams << [ match['away_team_id'] ]
      end
      return winning_teams
    end
    
  end

end
