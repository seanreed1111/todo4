#Blackjack!

##Objective
#Practice contional logic including nested conditionals. 
#Use methods to keep our code DRY.

##Instructions
#We are going to build a command line blackjack game.  
#A player gets dealt two cards which have values between 1-11.  
#After they get dealt two cards you should show them the total score of their cards 
#and ask them if they want to hit or stay. A player is allowed to "hit" up to two times.  
#After each hit you should ask if they want to hit or stay and display the total value of their cards. 
#If they don't want to hit, and they are not at 21 they lose.  
#noYour program should tell them they lose and exit.

#Note:  To take input from the person "playing" the game your program will have to use the Ruby method "gets".

##Challenge
#After successfully completing the previous game 
#(there should be a commit with a working version of this game), 
#alter the game so that a player can "hit" as many times as they want.

ranks = []
ranks = [["A", 1],["2",2], ["3",3], ["4",4], ["5",5],["6",6],
		["7",7],["8",8],["9",9],["10",10], ["J",10], ["Q",10], ["K",10]]

suits = [:clubs, :hearts, :diamonds, :spades]

deck = []
# should write a deck = Deck.new
#cards should be initialized the then shuffled

class Deck
	def initialize
	end

	def shuffle
	end
end

class Card
	attr_accessor :suit, :value, :rank

	def initialize (suit, array)
	@suit = suit
	@rank = array[0]
	@value = array[1]
	end

	def show
		print" #{self.rank} of #{self.suit}" 
	end



	# def puts (card1)
	# 	puts" #{card1.type} of #{card1.suit}"
	# end

	# def add_cards(card1, card2)
	# 	card1.value + card2.value
	# 	#need to fix if the card is A, could be 1 or 11
	# end



end

#make a new deck with cards in order
#deck should really be a part of a new Deck class instead of an just array
suits.each do |suit|
	ranks.each {|type| deck << Card.new(suit, rank) }
end





while true
	puts "It's time to place some Blackjack!!!"
	puts "You get two cards."
	"Press any key to begin"
	gets.chomp
	#deal first two cards to the player
	player_cards =[]
	player_value = 0
	player_cards << deck.pop << deck.pop
	player_cards.each do |card|
		print "#{card.show} and "
		player_value +=card.value
	end

	puts "your total is #{player_value}"
	break
end







