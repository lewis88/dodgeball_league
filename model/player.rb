require_relative( 'team.rb' )
require_relative( '../db/sqlrunner.rb' )

class Player

  attr_reader( :name )
  attr_accessor( :id, :health, :points, :team_id )

  def initialize( options )
    @id = options[ 'id' ].to_i
    @name = options[ 'name' ]
    @health = options[ 'health' ].to_i
    @points = options[ 'points' ].to_i
    @team_id = options[ 'team_id' ].to_i
  end

  def save
    sql = "INSERT INTO players (
      name, health, points )
      VALUES (
      '#{ @name }',
      #{ @health },
      #{ @points }
      ) RETURNING *;"
    return Player.map_item(sql)
  end

  def self.all
    sql = "SELECT * FROM players"
    return Player.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM players"
    SqlRunner.run(sql)
  end

  def teams
    sql = "SELECT name FROM teams
           WHERE id = #{@team_id};"
    return Team.map_items(sql)
  end

  def self.map_items(sql)
    players = SqlRunner.run(sql)
    result = players.map { |player| Player.new( player ) }
    return result
  end

  def self.map_item(sql)
    result = Player.map_items(sql)
    return result.first
  end

end
