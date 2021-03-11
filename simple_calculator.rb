puts "
Hello, I am a simple calculator. I will ask you for two numbers and an operator for the mathematical problem you'd like to solve. To see all possible operator results just type yes at the end!
"
def get_number
    string = gets.chomp
    number = check_float(string)

    if number #or number ? number : not_valid
        number
    else
        not_valid
    end
end

#created a not_valid method because I was reusing the code several times
def not_valid
    puts "Please enter a valid number"
        return get_number
end

def numerical_check(string)
    number = string.to_i
    number if number.to_s == string
end

def check_float(number)
    if number.include? "."
        float_numbers = number.split(".")
        
        not_valid unless float_numbers.length > 2
        
        create_arr = float_numbers.map {|n| numerical_check(n)}
        
        not_valid unless create_arr.include?(nil)
        
        create_arr.join(".").to_f
    else
        numerical_check(number)
    end
end

def start
    puts "So what is the first number? Remember you can use whole numbers and decimal points"
    number_one = get_number
    puts "What would you like to do today? Please use either +, -, %, * or /"
    operator = operator_check
    puts "Thank you and what is the second number?"
    number_two = get_number
    which_method(operator, number_one, number_two)
    return_results(number_one, number_two)
end

def operator_check
    valid_operators = %w[+ - % * /]
    operator = gets.chomp
    unless valid_operators.include?(operator)
        puts "Sorry you haven't entered a correct Operator, please try again"
        return operator_check
    end
    operator
end

#added method for asking the user what they would like to do
def which_method(operator, number_one, number_two)
    if operator == "+"
        puts "Addition: #{number_one} + #{number_two} = #{addition(number_one, number_two)}"
    elsif operator == "-"
        puts "Subtraction: #{number_one} - #{number_two} = #{subtraction(number_one, number_two)}"
    elsif operator == "/"
        puts "Division: #{number_one} / #{number_two} = #{divide(number_one, number_two)}"
    elsif operator == "*"
        puts "Multiplication: #{number_one} * #{number_two} = #{multiply(number_one, number_two)}"
    elsif operator == "%"
        puts "Modular value: The remainder of #{number_one} and #{number_two} is #{modulo(number_one, number_two)}"
    else 
        puts "Sorry you haven't entered a term I understand"
        operator
    end
end

#added methods as requested for the video
def multiply(number_one, number_two)
    number_one.to_f * number_two.to_f
end

def divide(number_one, number_two)
    number_one.to_f / number_two.to_f
end

def addition(number_one, number_two)
    number_one.to_f + number_two.to_f
end

def subtraction(number_one, number_two)
    number_one.to_f - number_two.to_f
end

def modulo(number_one, number_two)
    number_one.to_f % number_two.to_f # or number_one.modulo(number_two)
end

def return_results(number_one, number_two)
    puts "Would you like to see all the mathmatical results?"
    yes_or_no = gets.chomp.downcase
    if yes_or_no == "yes"
        puts "Division: #{number_one} / #{number_two} = #{divide(number_one, number_two)}"
        puts "Multiplication: #{number_one} * #{number_two} = #{multiply(number_one, number_two)}"
        puts "Addition: #{number_one} + #{number_two} = #{addition(number_one, number_two)}"
        puts "Subtraction: #{number_one} - #{number_two} = #{subtraction(number_one, number_two)}"
        puts "Modular value: The remainder of #{number_one} and #{number_two} is #{modulo(number_one, number_two)}"
    else
        puts "Thanks for using our service today"
    end
end

start