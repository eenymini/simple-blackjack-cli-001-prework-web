def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  rand(1 .. 10)# code #deal_card here
end

def display_card_total(deal_card)
  puts "Your cards add up to #{deal_card}"# code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card)
  if card > 21
    puts "Sorry, you hit #{card}. Thanks for playing!"
    end# code #end_game here
end

def initial_round
hand = deal_card + deal_card
display_card_total(hand)
return hand

end

def hit?(total)


prompt_user
input = get_user_input

if input == "h"
    total += deal_card
    return total
  elsif input == "s"
    return total
  else
    invalid_command
  end
  return total
  
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
  
end
    
