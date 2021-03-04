#Just a simple homework assignment of how you would gather info from user and then return it

puts "Hey I would like to play a quick game, what is your first name?"
first_name = gets.chomp
puts "Great thanks, and what is your last name?"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
reverse = full_name.reverse.downcase
name_length = full_name.length

puts "Perfect! So just to confirm your full name is #{full_name}, it's nice to meet you!"
puts "Your full name reversed is #{reverse}...looks funny to me!"
puts "And the length of your name is #{name_length} characters long isn't that cool?"