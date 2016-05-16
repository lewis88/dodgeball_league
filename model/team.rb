require_relative( 'player.rb' )
require_relative( '../db/sqlrunner.rb')

class Team

  attr_reader( :name )
  attr_accessor( :id, :ranking )

  def initialize( options )
    @id = options[ 'id' ].to_i
    @name = options[ 'name' ]
    @ranking = options[ 'ranking' ].to_i
  end

  def save
    sql = "INSERT INTO teams (
      name, ranking )
      VALUES (
      '#{ @name }',
      #{ @ranking }
      ) RETURNING *"
    return Team.map_item(sql)
  end

  def self.all
    sql = "SELECT * FROM teams"
    return Player.map_items(sql)
  end

  def self.delete_all
    sql = "DELETE FROM teams"
    SqlRunner.run(sql)
  end

  def players
    sql = "SELECT * FROM players
           WHERE team_id = #{@id}"
    return Player.map_items(sql)
  end

  def self.map_items(sql)
    teams = SqlRunner.run(sql)
    result = teams.map { |team| Team.new( team ) }
    return result
  end

  def self.map_item(sql)
    result = Team.map_items(sql)
    return result.first
  end

end
