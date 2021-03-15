@users = [
    {username: "user1" , password: "password1" , name: "Derek Smith" , dob: "13th January 1956" , address: "1234 Programmers Alley, Computer, CP1 0U4" , favcolor: "Midnight Black"},
    {username: "user2" , password: "password2" , name: "Carol Baskin" , dob: "1st October 1901" , address: "1 Iam Route, Computer, CP5 PL5" , favcolor: "Death red"},
    {username: "user3" , password: "password3" , name: "John Doe" , dob: "21st May 1987" , address: "House Error Line on a ledge, Computer, CP10U4" , favcolor: "Baby Pink"},
    {username: "user4" , password: "password4" , name: "Sarah Smith" , dob: "13th January 1956" , address: "1234 Programmers Alley, Computer, CP10U4" , favcolor: "Blue"},
    {username: "user5" , password: "password5" , name: "Cynthia Buttons" , dob: "8th December, year unknown" , address: "13 Hello World crescent, Computer, CP10 SG5" , favcolor: "Every single colour is my favourite"}
]

def auth_user(username, password)
    @users.detect {|u| u[:username] == username && u[:password] == password}
end

def get_username
    puts "Please enter your username"
    gets.chomp
end

def get_password
    puts "Please enter your password"
    gets.chomp
end

def quit_or_continue
    puts "puts Sorry you have entered incorrect information would you like to try again? Press n to quit or enter to continue"
    input = gets.chomp
    if input == "n"
        abort("Thanks for using the authenticator today, have a nice day!")
    end
end

user_attempt = 0

def login_attempt
    username = get_username
    password = get_password
    auth_user(username, password)
end

puts "
I am a basic authenticator, I will ask you for your username and password and then return the information I have stored for you.
"
while user_attempt < 4
    authentication = login_attempt
    unless authentication
        quit_or_continue
        user_attempt += 1 
        next
    end
    abort(
        "Your username is #{authentication[:username]}. Your password is #{authentication[:password]} \n
        The information we have in our file for you is: \n
        Name: #{authentication[:name]} \n
        DOB: #{authentication[:dob]} \n
        Address: #{authentication[:address]} \n
        Favourite Colour: #{authentication[:favcolor]} , we are in the UK there is no \"color\" here"
    )
end

puts "You have exceeded the number of tries available at this time, please try again later"