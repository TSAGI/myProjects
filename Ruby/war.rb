deck = {
    "Clubs" => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    "Spades" => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    "Hearts" => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14],
    "Diamonds" => [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
}
royalty = {
    11 => "Jack",
    12 => "Queen",
    13 => "King",
    14 => "Ace"
}
player1_rounds_won = 0
player2_rounds_won = 0

until deck.empty?
    #PLAYER 1 CARD THIS ROUND
    ##########################
    suit1 = deck.keys.sample
    number_of_cards_in_suit1 = deck[suit1].length
    element_in_suit1_array = rand(number_of_cards_in_suit1)
    player1_card = deck[suit1][element_in_suit1_array]        
    deck[suit1].delete_at(element_in_suit1_array)  #remove card from deck
    if number_of_cards_in_suit1 == 1 then deck.delete(suit1) end  #remove suit if empty   
    
    #PLAYER 2 CARD THIS ROUND
    ##########################
    suit2 = deck.keys.sample
    number_of_cards_in_suit2 = deck[suit2].length
    element_in_suit2_array = rand(number_of_cards_in_suit2)
    player2_card = deck[suit2][element_in_suit2_array]         
    deck[suit2].delete_at(element_in_suit2_array)  #remove card from deck
    if number_of_cards_in_suit2 == 1 then deck.delete(suit2) end  #remove suit if empty  
    
    #RESULTS OF THIS ROUND
    #########################
    p1 = player1_card
    p2 = player2_card
    if player1_card > 10 then player1_card = royalty[player1_card] end
    if player2_card > 10 then player2_card = royalty[player2_card] end
    puts "You have the #{player1_card} of #{suit1}."
    puts "Your opponent has the #{player2_card} of #{suit2}."         
    if p1 > p2 then
        player1_rounds_won += 1
        puts "You are the winner of this round."
    elsif p1 < p2
        player2_rounds_won += 1
        puts "Your opponent is the winner of this round."
    else
        puts "This round is a tie."
    end
    puts
    # puts "Press <enter> to continue or <q> then <enter> to quit..."
    # a = gets.chomp  
    # if a.downcase == "q" then break end         
end

#   FINAL RESULTS
###########################
print "You won #{player1_rounds_won} rounds this game, and your opponent won #{player2_rounds_won} rounds this game.\n"
if player1_rounds_won > player2_rounds_won then
    puts "Congratulations!! You beat your opponent in War."
elsif player1_rounds_won < player2_rounds_won then
    puts "Your opponent beat you in War."
else
    puts "This War is a draw."
end


