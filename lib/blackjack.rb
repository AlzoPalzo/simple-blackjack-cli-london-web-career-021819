def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
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
  num1 = deal_card
  num2 = deal_card
  display_card_total(num1 + num2)
  total = num1 + num2
end

def hit?(num)
  prompt_user
  choice = get_user_input
  if choice != "s" && choice != "h"
    invalid_command
  elsif choice == "s"
    num
  else
    num += deal_card()
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  total = initial_round
  while total < 21
    total = hit?(total)
    display_card_total(total)
  end
end_game(total)
end
