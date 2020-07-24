require 'pry'

class Player
	attr_reader :name, :player_value
  
  def initialize(name,player_value)
    @name = name
    @player_value = player_value
  end

end

