
class DatabaseMethods

  def self.map_items(sql)
    pokemons = SqlRunner.run(sql)
    result = pokemons.map { |pokemon| Pokemon.new( pokemon ) }
    return result
  end

  def self.map_item(sql)
    result = Pokemon.map_items(sql)
    return result.first
  end

  def save( table, *args )
    sql = "INSERT INTO #{ table }s ( #{args.join(', ')} ) VALUES (
      '#{ @first_name }',
      '#{ @last_name }',
      #{ @age },
      #{ @health }
      );"
    save = SqlRunner.run( sql )
    return result
  end


end
