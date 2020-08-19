require 'pry'
def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
card_total=rand(10)+1
return card_total
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
return card_total
end

def prompt_user
return "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
ctotal=deal_card+deal_card
display_card_total(ctotal)
return ctotal
end

def invalid_command
return 'Please enter a valid command'
end

def hit?(card_total)
prompt_user
input=get_user_input
if input==='s'
  return card_total
else if input === 'h'
  card_total+=deal_card
  return card_total
else
  invalid_command
  prompt_user
end
end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
