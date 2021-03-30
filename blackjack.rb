CARD_NUMBERS = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze

@deck_template = {
    "Hearts": [],
    "Clubs": [],
    "Diamonds": [],
    "Spades": []
}

def currency
	@currency = 100
end

def round
	@player_stay = false
	@dealer_stay = false
	generate_deck(CARD_NUMBERS)
	shuffle_cards
	player_hand
	dealer_hand
	place_bet
	round_scores
end

def generate_deck(card_numbers)
	card_numbers.each do |cn|
  		@deck_template.keys.each do |s|
			@deck_template[s] << "#{cn} #{s.to_s}"
		end
	end
	@deck_of_cards = @deck_template.values.flatten
end

def shuffle_cards
	5.times {@deck_of_cards.shuffle!}
end

def player_hand
	@player_cards = @deck_of_cards.sample(2)
	remove_from_deck(@player_cards)
	puts "Players Cards are: #{@player_cards}"
end

def dealer_hand
	@dealer_cards = @deck_of_cards.sample(2)
	remove_from_deck(@dealer_cards)
	puts "Dealers Cards are: #{@dealer_cards}"
end

def remove_from_deck(cards)
	cards.each do |c|
		@deck_of_cards.delete(c)
	end
end

def place_bet
	puts "Time to place your bets, how much do you want to bet today? You have a balance of £#{@currency}"
	input = gets.chomp.to_i
	
	if input == 0
		puts "Sorry that's an invalid bet amount, try again"
		return place_bet
	end

	@player_bet = input
	puts "You have bet £#{@player_bet} this round - you big spender"
	@currency -= @player_bet
end

def card_value(cards)
	card_values = cards.map {|c| c.split(" ")[0]}
	value = 0
	
	card_values.each do |v|
		if ["J", "Q", "K"].include?(v)
			value += 10
		elsif ("2".."10").include?(v)
			value += v.to_i
		elsif ["A"].include?(v)
			if value > 10 
				value += 1
			else
				value += 11
			end
		else
			abort("There has been an error, try again!")
		end
	end

	value
end

def round_scores
	@player_cards_value = card_value(@player_cards)
	puts "The current value of your cards is #{@player_cards_value}"

	@dealer_cards_value = card_value(@dealer_cards)
	puts "The current value of dealers cards is #{@dealer_cards_value}"
	
	if @player_cards_value > 21
		bust
	elsif @dealer_cards_value > 21
		puts "Player wins, dealer loses! Woohoo you did it!"
		player_wins
		continue_playing
	elsif @player_stay && @player_cards_value < @dealer_cards_value
		puts "Dealer Wins, player loses. You have lost £#{@player_bet}"
		continue_playing
	elsif @dealer_stay && @dealer_cards_value < @player_cards_value
		puts "Player wins, dealer loses! Woohoo you did it!"
		player_wins
	elsif @dealer_stay && @player_stay
		if @player_cards_value > @dealer_cards_value
			puts "Player wins, dealer loses! Woohoo you did it!"
			player_wins
		elsif @dealer_cards_value > @player_cards_value
			puts "Dealer Wins, player loses. You have lost £#{@player_bet}"
		elsif @dealer_cards_value == @player_cards_value
			puts "It's a draw, you both win!"
			player_wins
		end
		continue_playing
		
	elsif !@player_stay
		hit_or_stay
	end
end

def bust
	puts "Oh no, you went over the 21 card value, you've gone bust!"
	puts "You lost £#{@player_bet} you now have £#{@currency} remaining"
	continue_playing
end

def player_wins
	winnings = @player_bet * 2
	@currency += winnings
	puts "You won £#{@player_bet * 2}, your balance after this round is £#{@currency}"
end

def hit_or_stay
	puts "Would you like to hit or stay?"
	input = gets.chomp.downcase
	if input == "hit"
		hit_card = @deck_of_cards.sample(1)
		remove_from_deck(hit_card)
		@player_cards << hit_card[0]
		card_value(@player_cards)
		puts "You chose to hit, your card is #{hit_card}"
		puts "You have the following cards: #{@player_cards.flatten} and dealer has the following cards: #{@dealer_cards.flatten}"
		round_scores
	elsif input == "stay"
		@player_stay = true
		dealer_turn
	else
		puts "Sorry you have entered something I don't understand. Type hit or stay"
		hit_or_stay
	end
end

def dealer_turn
	card_value(@dealer_cards)
	if @dealer_cards_value < 17
		hit_card = @deck_of_cards.sample(1)
		remove_from_deck(hit_card)
		@dealer_cards << hit_card[0]
		@dealer_cards_value = card_value(@dealer_cards)
		puts "Dealer chose to hit, dealer hit card is #{hit_card}"
		puts "Dealer has the following cards: #{@dealer_cards.flatten} and player has the following cards: #{@player_cards.flatten}"
		dealer_turn
		
	elsif @dealer_cards_value >= 17 && @dealer_cards_value <= 21
		puts "Dealer chose to stay"
		@dealer_stay = true
		round_scores
		
	elsif @dealer_cards_value > 21
		puts "Player wins this round, I'm so proud of you let\'s keep it going"
		player_wins
		continue_playing
	end
end
  
def continue_playing
	if @currency == 0
		abort("You've ran out of money this time, I think we'll call it quits, come back another time!")
	end

	puts "Would you like to continue or quit? Type continue or quit"
	input = gets.chomp.downcase
	if input == "continue"
		puts "Ok another round is starting, you have £#{@currency} remaining"
		round
	elsif input == "quit"
		puts "Thanks for playing blackjack today, your final balance is £#{@currency}"
	else 
		puts "Sorry you haven't entered something I understand, please type continue or quit"
		continue_playing
	end
end

puts "Thank you for joining us in Blackjack, normal rules apply. Get as close to 21 without going bust and beat the dealer\(computer\). We've been kind and given you a balance of £100 to start you off Let\'s do this!!"
currency
round