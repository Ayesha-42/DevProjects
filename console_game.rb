# rubocop:disable Metrics/AbcSize, Style/FrozenStringLiteralComment, Metrics/MethodLength

MAX_TRY_COUNT = 5

def main
  puts 'Game: HiLo'

  # computer chooses a number from 1 to 100 (inclusive)
  comp_choice = rand(101)
  number_of_choices = 1

  # do-while loop for each of the 6 chances
  loop do
    # gets users guess
    puts "\n Enter your guess number #{number_of_choices}"
    user_choice = gets.chomp

    # checks if not nil
    if user_choice != '' && user_choice.match?(/\A-?\d+\Z/)
      user_choice = user_choice.to_i
    else
      puts 'Please enter a valid integer value'
      next
    end

    if user_choice == comp_choice
      puts 'you guessed the number correctly'
      break

    elsif user_choice < comp_choice
      puts 'you guessed less that the required number'

    else
      puts 'you guessed more than the required number'
    end

    if number_of_choices > MAX_TRY_COUNT
      puts 'You have run out of chances to guess. Better luck next time'
      puts "The number was: #{comp_choice}"
      break
    end

    number_of_choices += 1
  end
end
# rubocop:enable Metrics/AbcSize, Style/FrozenStringLiteralComment, Metrics/MethodLength

main
