require 'pry'


class Board 
	attr_accessor :array_boardcase, :count_turn 
	  

  def initialize()
   
    @count_turn = 0
    @board = {"A1"=>"","B1"=>"", "C1"=>"","A2"=>"","B2"=>"","C2"=>"","A3"=>"","B3"=>"","C3"=>""}
  end

  def play_turn
    
    
    puts " Choissisez la case à remplir "
    print ">"
    insert = gets.chomp.to_s
    if count_turn % 2 == 0
    @board[insert] = "X"
    else @board[insert] = "O"
    end
		board
    @count_turn += 1
    puts "Voici le résultat du tour #{@count_turn}"
    
    if count_turn % 2 == 0
      puts " Player 1 à toi de jouer !"
    else puts "Player 2 à toi de jouer !"
    end
	end

  def victory?
   
    # Il y a 8 combinaisons gagnantes
    if @board["A1"] == "X" && @board["A2"] == "X" && @board["A3"] == "X" || @board["B1"] == "X" && @board["B2"] == "X" && @board["B3"] == "X" || @board["C1"] == "X" && @board["C2"] == "X" && @board["C3"] == "X" || @board["A1"] == "X" && @board["B1"] == "X" && @board["C1"] == "X" ||
			@board["A2"] == "X" && @board["B2"] == "X" && @board["C2"] == "X" || @board["A3"] == "X" && @board["B3"] == "X" && @board["C3"] == "X" || @board["A1"] == "X" && @board["B2"] == "X" && @board["C3"] == "X" || @board["A3"] == "X" && @board["B2"] == "X" && @board["C1"] == "X"    
    	puts "Bravo Joueur 1 ! Tu as gagné !! Par contre Joueur 2, t'es nul."
    	@status = "endgame"   
    elsif @board["A1"] == "O" && @board["A2"] == "O" && @board["A3"] == "O" || @board["B1"] == "O" && @board["B2"] == "O" && @board["B3"] == "O" || @board["C1"] == "O" && @board["C2"] == "O" && @board["C3"] == "O" || @board["A1"] == "O" && @board["B1"] == "O" && @board["C1"] == "O" ||
      @board["A2"] == "O" && @board["B2"] == "O" && @board["C2"] == "O" || @board["A3"] == "O" && @board["B3"] == "O" && @board["C3"] == "O" || @board["A1"] == "O" && @board["B2"] == "O" && @board["C3"] == "O" || @board["A3"] == "O" && @board["B2"] == "O" && @board["C1"] == "O" 
    	puts "Bravo Joueur 2 ! Tu as gagné !! Par contre Joueur 1, t'es nul." 
    	@status = "endgame"     
    end
  end

  def board
	puts " #{@board["A1"]} | #{@board["A2"]} | #{@board["A3"]} "     
	puts "-----------"     
	puts " #{@board["B1"]} | #{@board["B2"]} | #{@board["B3"]} "     
	puts "-----------"     
	puts " #{@board["C1"]} | #{@board["C2"]} | #{@board["C3"]} " 
  	
  end

end







