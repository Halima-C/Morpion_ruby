require 'pry'


class Board 
	attr_accessor :array_boardcase, :count_turn, 
	  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué

  def initialize()
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
    @count_turn = 0
    @board = {"A1"=>"","B1"=>"", "C1"=>"","A2"=>"","B2"=>"","C2"=>"","A3"=>"","B3"=>"","C3"=>""}
  end

  def play_turn
    #TO DO : une méthode qui :

    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    puts " Choissisez la case à remplir "
    print ">"
    insert = gets.chomp.to_s
    @board[insert]= "X"
		board
	end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    # Il y a 8 combinaisons gagnantes
    if @board["A1"] == "X" && @board["A2"] == "X" && @board["A3"] == "X" || @board["B1"] == "X" && @board["B2"] == "X" && @board["B3"] == "X" || @board["C1"] == "X" && @board["C2"] == "X" && @board["C3"] == "X" || @board["A1"] == "X" && @board["B1"] == "X" && @board["C1"] == "X" ||
			@board["A2"] == "X" && @board["B2"] == "X" && @board["C2"] == "X" || @board["A3"] == "X" && @board["B3"] == "X" && @board["C3"] == "X" || @board["A1"] == "X" && @board["B2"] == "X" && @board["C3"] == "X" || @board["A3"] == "X" && @board["B2"] == "X" && @board["C1"] == "X"    
    	puts "Bravo Joueur 1 ! Tu as gagné !! Par contre Joueur 2, t'es nul."
    	@status = "endgame"   
    elsif @board["A1"] && @board["A2"] && @board["A3"] == "O" || @board["B1"] && @board["B2"] && @board["B3"] == "0" || @board["C1"] && @board["C2"] && @board["C3"] == "0" || @board["A1"] && @board["B1"] && @board["C1"] == "0" ||
			@board["A2"] && @board["B2"] && @board["C2"] == "0" || @board["A3"] && @board["B3"] && @board["C3"] == "0" || @board["A1"] && @board["B2"] && @board["C3"] == "0" || @board["A3"] && @board["B2"] && @board["C1"] == "0"           
    	puts "Bravo Joueur 2 ! Tu as gagné !! Par contre Joueur 1, t'es nul." 
    	@status = "endgame"     
    end
    #puts "Match nul, aucun gagnant" 
  end

  def board
	puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "     
	puts "-----------"     
	puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "     
	puts "-----------"     
	puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} " 
  	
  end


end






