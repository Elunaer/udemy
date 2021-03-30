I'm currently working on a few projects via Udemy Complete ruby guide course. This repository will store some of the projects as part of the
complete Ruby on Rails developer course.

## Projects will include
* [ ] Random mini projects & Homework to solidify knowledge from the course so these may seem random (but are all necessary for showing growth)
* [ ] MessageMe chat app using action cable and web sockets 
* [ ] Stock Tracker Social media app 
* [ ] Project management app 

### Homework assignments 
* [X] Simple Calculator
* [X] Authenticator
* [X] Area Code Dictionary

### Personal Assignments (To solidify knowledge I have learned)
* [X] Command line Blackjack

## Homework assignments information

### Simple Calculator 
My task was to: 

Create a simple calculator that takes in 2 numbers and then returns the multiplication, division, addition and subtraction of the numbers entered. I decided to 
add a few things of my own just to make it a little more user friendly. Including a couple of validation checks. I'm sure there are better ways to do it but this is what I ended 
up with and I'm pretty happy with it. Originally as the assignement was set it asked that you entered 2 whole numbers, there were no checks needed to be made for whether what was entered was a number, letter etc
and for the part where you would select the operator the homework was to create a list (ie for multiplication press 1 and so on) so I decided to add the proper operator  
checks and then I also added some checks for decimal points as well which wasn't required. 

Although this seems really simple (and it is) I am really proud of myself because I have no prior programming knowledge and to build something  
like this just makes me super proud! 

To use the calculator just open your terminal and then:
```
ruby simple_calculator.rb
```
It should then look something like this:
```
Hello, I am a simple calculator. I will ask you for two numbers and then I will return the multiplication, addition, subtraction, modular value and division of the numbers.
So what is the first number? Remember you can use whole numbers and decimal points
```
then you can enter any number you like including float numbers
```
10.56
```
### Authenticator (command line) 
My task was to: 

Create a basic authenticator in command line. The authenticator should ask for a username and password and then return the original hash to them. I added some basic details in for each user so it didn't just return the username and password - mainly because they have just entered their username and password so for it to just return that would be strange!

To use the authenticator just open your terminal and then:
```
ruby homework_authenticator.rb
```

It should then look something like this:
```
I am a basic authenticator, I will ask you for your username and password and then return the information I have stored for you.
Please enter a username
```
You can choose from "user" then a number (ie user1) between user1 and user5, then the password is just "password" with the matching number on the end.

Try it and then see what information you get back!
```
Please enter a username
user1
Please enter a password
password1
```
### Area code dictionary (command line) 
My task was to: 

1. Create a dictionary (hash) with 10 city names, where the city name (key) will be a string, and the area code would be the value, an example is given in the resources in the project video

2. Display the city names to the user for cities which are available in the dictionary

3. Get input from the user on the city name (hint: use gets.chomp method)

4. Display area code based on user's city choice

5. Loop - keep the program running and prompt the user for new city names to lookup

6. Complete the two methods to lookup city names and to find area code based on city names

I chose not to use "loop" because I don't think it would have been the most effective way considering I chose to also allow the user to enter in
a telephone code to find a city/area as well as what was asked.

To use the area code dictionary just open your terminal and then:
```
ruby area_code_dictionary.rb
```

It should then look something like this:
```
Thanks for using our Telephone book today. Our service is available to find an area/city by its telephone code or to find a telephone code by entering a city/area.

Would you like to enter an area or code today? Type: "Area" or "Code"

```
You can type area, code or leave it blank. Leaving it blank will error and prompt you to try again

### Update
I updated the file to ask whether you would like to enter a code or area to streamline the code and tried to follow DRY. 

## Personal projects

### Command line Blackjack

In my course on udemy we were told to go and practice the things we have learned so far. So I decided to make a command line blackjack game. I
probably over complicated things a little by doing this so early on because it took a lot of brain power to work out all of the intersections with methods linking to others
and "aaarghh". However, I did have loads of fun making this. It did take me a while to write it hence the gap in my commit history!

So to play the game just open your terminal:
```
ruby blackjack.rb
```
I have made an in game currency of £100 to start things off. You can bet any amount as long as it's a whole number. If you enter a float number it will just round down
(ie if you enter 20.5 it will only bet £20). It works just like a normal blackjack game where the dealer and player are given 2 cards each. Your aim is to get as closeto 21
without going bust and beating the computers score. Each card has a value. J, Q & K have a value of 10, Ace has a value of either 11 or 1 depending on your card value at the
time and then numbers 2 through 10 represent themselves. You can choose to stay at any point and the dealer has to get to a minimum card value of 17 before choosing to stay. The 
only issue being is that because it's very basic and not completely random if a dealers cards are at the value of 17 then they will always stay.

If you win a round you will get double your bet, if you lose you lose the bet you placed. It'd just meant to be a little bit of fun so try it out!
