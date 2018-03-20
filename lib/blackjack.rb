def welcome
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  display_card_total(deal_card + deal_card)
end

def hit?(card_total)
  # why are we naming the method hit? if it returns int, not bool
  prompt_user
  ans = get_user_input
  if ans == "h"
    card_total += deal_card
  elsif ans == "s"
    prompt_user
    hit?
  else
    invalid_command
    hit?
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  
  
end
    
