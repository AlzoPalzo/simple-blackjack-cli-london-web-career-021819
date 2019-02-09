def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(num1, num2)
  puts "Current total is #{num1 + num2}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  choice = gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal_card
end

def hit?(num)
  prompt_user
  choice = get_user_input
  if choice != "s" || "h"
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
