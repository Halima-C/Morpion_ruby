require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)
require 'game' 
require 'player'
require 'board'
require 'boardcase'
require 'show'

puts"                         -------------------------------------------------- "
		puts"                         |    Saluuuut , bienvenue au jeu du Morpion      | "
		puts"                         |                                                | "
		puts"                         -------------------------------------------------- \n"


puts " Joueur 1, Quel est ton prénom ?"
print "> "
first_name1 = gets.chomp

player1 = Player.new(first_name1, "X")

puts " Joueur 2, Quel est ton prénom ?"
print "> "
first_name2 = gets.chomp

player2 = Player.new(first_name2, "O")
test = Board.new
puts "#{player1.name}, c'est à ton tour de jouer !"



     round = 0 
     
     	while round <= 9
        	test.play_turn
        	if test.victory? 
        		break 
        	else test.play_turn
        	round = round +1	
        	end	
      end

    


