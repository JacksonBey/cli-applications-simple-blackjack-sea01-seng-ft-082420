require 'pry'
def welcome
puts "Welcome to the Blackjack Table"
return "Welcome to the Blackjack Table"
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
  puts "Type 'h' to hit or 's' to stay"
return "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.chomp
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
return "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
ctotal=deal_card+deal_card
display_card_total(ctotal)
return ctotal
end

def invalid_command
  puts 'Please enter a valid command'
return 'Please enter a valid command'
end

def hit?(card_total)
prompt_user
input=get_user_input
while input!="s" and input!="h"
  invalid_command
  prompt_user
  input=get_user_input
end
if input==='s'
  return card_total
else if input === 'h'
  card_total+=deal_card
  return card_total
end
end
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
cards=initial_round
cards=hit?(cards)
display_card_total(cards)
while cards<21
  cards=hit?(cards)
end
end_game(cards)
end
    
