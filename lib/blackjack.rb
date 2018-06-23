def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  total = card_one + card_two
  display_card_total(total)
  return total
end

def hit?(num)
  # code hit? here
  total = num
  prompt_user
  value = get_user_input
  if value == 'h'
    total += deal_card
  elsif value == 's'
    return total
  else
    invalid_command
    prompt_user
  end
  return total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  welcome
  total = initial_round
  until total > 21 
    display_card_total(total)
    total = hit?(total)
  end
  end_game(total)
end
    
