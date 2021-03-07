#Homework - create a simple calculator that takes in 2 numbers and then returns the -
#multiplication, division, addition and subtraction of the numbers entered. I decided to-
#convert the initial input to a number so that I could check user input was a number and if-
#it isn't a number then it will ask for a valid number.

puts "
Hello, I am a simple calculator. I will ask you for two numbers and then I will return the multiplication, addition, subtraction, modular value and division of the numbers.
"
def get_number
    number = convert_number(gets.chomp)
    if number
        number
    else
        puts "Please enter a valid number"
        get_number
    end
end

def convert_number(string)
    number = string.to_i
    number if number.to_s == string
end

def start
    puts "So what is the first number? Remember you can use whole numbers and decimal points"
    number_one = get_number
    puts "Thank you and what is the second number?"
    number_two = get_number
    return_results(number_one, number_two)
end

def return_results(number_one, number_two)
    puts "Division: #{number_one} divided by #{number_two} = #{number_one / number_two.to_f}"
    puts "Multiplication: #{number_one} multiplied by #{number_two} = #{number_one * number_two.to_f}"
    puts "Addition: #{number_one} plus #{number_two} = #{number_one + number_two.to_f}"
    puts "Subtraction: #{number_one} minus #{number_two} = #{number_one - number_two.to_f}"
    puts "Modular value: The modular value of #{number_one} and #{number_two} is #{number_one % number_two.to_f}"
end

start