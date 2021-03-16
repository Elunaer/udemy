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
* [x] Area Code Dictionary

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
Thanks for using our Telephone book today, Would you like to find an area telephone code today?
```

You can type yes, no or leave it blank. Leaving it blank will error, yes will give you the following:
```
We have the following areas on file:
Leeds
Sheffield
...
```
if you type no it will ask you

```
Would you like to find an area by using a telephone code?

```

I'm not really happy with the names of my methods but I will work on that as a I progress.