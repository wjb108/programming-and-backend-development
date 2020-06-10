VALID_CHOICES = ["rock", "paper", "scissors", "lizard", "spock"]
VALID_ABBREVIATIONS = ["r", "p", "sc", "l", "sp"]

def prompt(message)
  Kernel.puts("=> #{message}")
end

# commented code is from prior question that showed how you couldn't place this method prior to defining the prompt method above
# def test_method
#   prompt("test message")
# end
#
# test_method

def win?(first, second)
  pairs = {
    "rock" => ["scissors", "lizard"],
    "paper" => ["rock", "spock"],
    "scissors" => ["paper", "lizard"],
    "spock" => ["scissors", "rock"],
    "lizard" => ["paper", "spock"]
  }
  pairs[first].include?(second)
end

# This is the prior method from the walkthough method one issues is that by using the prior defined prompt method we are using puts which prints the string but returns nil. We need to evaluate the string and have the counter add and it occured to me to use an if statement, where be saving the variable final_result to the string prior printed we can return a true or false and have the subsequent action be an player_counter or computer_counter that increments.

# It was unclear if i was supposed to create standalone methods to do this, i found it easier to used the counter and break statements directly into the body of the code because they need to be in a loop anyways and wasn't sure how that would work if i had a method with a loop.

# def display_results(player, computer)
#   if win?(player, computer)
#     prompt("You won!")
#   elsif win?(computer, player)
#     prompt("Computer won!")
#   else
#     prompt("It's a tie!")
#   end
# end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

counter = 0
player_counter = 0
computer_counter = 0
final_result = nil

loop do
  choice = nil
  loop do
    counter += 1
    puts "Round #{counter}"
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif VALID_ABBREVIATIONS.include?(choice)
      case choice
      when "r"
        choice = "rock"
      when "p"
        choice = "paper"
      when "sc"
        choice = "scissors"
      when "sp"
        choice = "spock"
      when "l"
        choice = "lizard"
      end
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample()

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  final_result = display_results(choice, computer_choice)

  p final_result
  if final_result == "You won!"
    player_counter += 1
  elsif final_result == "Computer won!"
    computer_counter += 1
  end
  puts ">> Player Wins: #{player_counter}"
  puts ">> Computer Wins: #{computer_counter}"
  if computer_counter == 5 || player_counter == 5
    prompt("5 Wins! We have a grand winner!")
    break
  end

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp()
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing!")

# was previously this way but rubocop said it was too complex, was right :)
# def win?(first, second)
#   (first == "rock" && second == "scissors") ||
#     (first == "paper" && second == "rock") ||
#     (first == "scissors" && second == "paper") ||
#     (first == "rock" && second == "lizard") ||
#     (first == "lizard" && second == "spock") ||
#     (first == "spock" && second == "scissors") ||
#     (first == "scissors" && second == "lizard") ||
#     (first == "lizard" && second == "paper") ||
#     (first == "paper" && second == "spock") ||
#     (first == "spock" && second == "rock")
# end
