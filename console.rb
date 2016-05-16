require_relative( 'model/player.rb' )
require_relative( 'model/team.rb' )
require_relative( 'model/match.rb')
require( 'Pry-byebug')

Team.delete_all
Player.delete_all
Match.delete_all

team1 = Team.new( { 'name' => 'Pokekillers', 'ranking' => 0 } )
team2 = Team.new( { 'name' => 'Pokecritters', 'ranking' => 0 } )
team3 = Team.new( { 'name' => 'Pokedots', 'ranking' => 0 } )
team4 = Team.new( { 'name' => 'Pokesquares', 'ranking' => 0 } )
team5 = Team.new( { 'name' => 'Pokenots', 'ranking' => 0 } )
team6 = Team.new( { 'name' => 'Pokehitters', 'ranking' => 0 } )
team7 = Team.new( { 'name' => 'Pokefire', 'ranking' => 0 } )
team8 = Team.new( { 'name' => 'Pokefire', 'ranking' => 0 } )

t1 = team1.save
t2 = team1.save
t3 = team1.save
t4 = team1.save
t5 = team1.save
t6 = team1.save
t7 = team1.save
t8 = team1.save

player1 = Player.new( { 'name' => 'Pikachu', 'health' => 10, 'points' => 0, 'team_id' => t1.id } )
player2 = Player.new( { 'name' => 'Bulbasaur', 'health' => 10, 'points' => 0, 'team_id' => t2.id } )
player3 = Player.new( { 'name' => 'Charmander', 'health' => 10, 'points' => 0, 'team_id' => t3.id } )
player4 = Player.new( { 'name' => 'Squirtle', 'health' => 10, 'points' => 0, 'team_id' => t4.id } )
player5 = Player.new( { 'name' => 'Haunter', 'health' => 10, 'points' => 0, 'team_id' => t5.id } )
player6 = Player.new( { 'name' => 'Golduck', 'health' => 10, 'points' => 0, 'team_id' => t6.id } )
player7 = Player.new( { 'name' => 'Sandshrew', 'health' => 10, 'points' => 0, 'team_id' => t7.id } )
player8 = Player.new( { 'name' => 'Slowbro', 'health' => 10, 'points' => 0, 'team_id' => t8.id } )
player9 = Player.new( { 'name' => 'Grimer', 'health' => 10, 'points' => 0, 'team_id' => t1.id} )
player10 = Player.new( { 'name' => 'Gastly', 'health' => 10, 'points' => 0, 'team_id' => t2.id } )
player11 = Player.new( { 'name' => 'Voltorb' , 'health' => 10, 'points' => 0, 'team_id' => t3.id } )
player12 = Player.new( { 'name' => 'Snorlaks', 'health' => 10, 'points' => 0, 'team_id' => t4.id } )
player13 = Player.new( { 'name' => 'Kabutops', 'health' => 10, 'points' => 0, 'team_id' => t5.id } )
player14 = Player.new( { 'name' => 'Koffing', 'health' => 10, 'points' => 0, 'team_id' => t6.id } )
player15 = Player.new( { 'name' => 'Drowzee', 'health' => 10, 'points' => 0, 'team_id' => t7.id } )
player16 = Player.new( { 'name' => 'Marowak', 'health' => 10, 'points' => 0, 'team_id' => t8.id } )
player17 = Player.new( { 'name' => 'Dewgong', 'health' => 10, 'points' => 0, 'team_id' => t1.id } )
player18 = Player.new( { 'name' => 'Golum', 'health' => 10, 'points' => 0, 'team_id' => t2.id } )
player19 = Player.new( { 'name' => 'Rapidash', 'health' => 10, 'points' => 0, 'team_id' => t3.id } )
player20 = Player.new( { 'name' => 'Porygon', 'health' => 10, 'points' => 0, 'team_id' => t4.id } )
player21 = Player.new( { 'name' => 'Beedrill', 'health' => 10, 'points' => 0, 'team_id' => t5.id } )
player22 = Player.new( { 'name' => 'Pidgeotto', 'health' => 10, 'points' => 0, 'team_id' => t6.id } )
player23 = Player.new( { 'name' => 'Raticate', 'health' => 10, 'points' => 0, 'team_id' => t7.id } )
player24 = Player.new( { 'name' => 'Ekans', 'health' => 10, 'points' => 0, 'team_id' => t8.id } )

p1 = player1.save
p2 = player2.save
p3 = player3.save
p4 = player4.save
p5 = player5.save
p6 = player6.save
p7 = player7.save
p8 = player8.save
p9 = player9.save
p10 = player10.save
p11 = player11.save
p12 = player12.save
p13 = player13.save
p14 = player14.save
p15 = player15.save
p16 = player16.save
p17 = player17.save
p18 = player18.save
p19 = player19.save
p20 = player20.save
p21 = player21.save
p22 = player22.save
p23 = player23.save
p24 = player24.save

binding.pry
nil

match1 = Match.new( { 'home_team_id' => t1.id, 'away_team_id' => t2.id, home_team_score => 1, away_team_score => 0 } )
match2 = Match.new( { 'home_team_id' => t1.id, 'away_team_id' => t3.id, home_team_score => 2, away_team_score => 1 } )
match3 = Match.new( { 'home_team_id' => t2.id, 'away_team_id' => t4.id, home_team_score => 2, away_team_score => 3 } )
match4 = Match.new( { 'home_team_id' => t3.id, 'away_team_id' => t5.id, home_team_score => 2, away_team_score => 1 } )
match5 = Match.new( { 'home_team_id' => t5.id, 'away_team_id' => t7.id, home_team_score => 4, away_team_score => 2 } )
match6 = Match.new( { 'home_team_id' => t6.id, 'away_team_id' => t7.id, home_team_score => 3, away_team_score => 1 } )
match7 = Match.new( { 'home_team_id' => t6.id, 'away_team_id' => t8.id, home_team_score => 3, away_team_score => 1 } )
match8 = Match.new( { 'home_team_id' => t8.id, 'away_team_id' => t9.id, home_team_score => 3, away_team_score => 1 } )
match9 = Match.new( { 'home_team_id' => t5.id, 'away_team_id' => t8.id, home_team_score => 3, away_team_score => 1 } )
match10 = Match.new( { 'home_team_id' => t5.id, 'away_team_id' => t8.id, home_team_score => 3, away_team_score => 1 } )
