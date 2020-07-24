require 'pry'

class Game
	attr_accessor :current_player, :status, :Board, :array_player
	  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.

  def initialize()

		puts"                         -------------------------------------------------- "
		puts"                         |    Saluuuut , bienvenue au jeu du Morpion      | "
		puts"                         |                                                | "
		puts"                         -------------------------------------------------- \n"

  
		
  end

  def turn(board)
    
    Board.play_turn
    
  end

  def new_round(board)
   
    @array_player
    Board.board

  end

  def game_end
  
   Board.victory?
  	end  

end
