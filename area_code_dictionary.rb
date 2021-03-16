#Our theoretical database
@telephone_book = [
  { area: "Leeds", code: "0113" },
  { area: "Sheffield", code: "0114" },
  { area: "Nottingham", code: "0115" },
  { area: "Leicester", code: "0116" },
  { area: "Bodmin", code: "01208" },
  { area: "Birmingham", code: "0121" },
  { area: "Bedford", code: "01234" },
  { area: "Chester", code: "01244" },
  { area: "Doncaster", code: "01302" },
  { area: "Aboyne", code: "013392" },
  { area: "Glasgow", code: "0141" },
  { area: "Harrogate", code: "014232" },
  { area: "Hathersage", code: "01433" },
  { area: "Barry", code: "01446" },
  { area: "Rhyl", code: "01745" },
]

#I separated this from start because it was repeating the whole thing each time user entered an incorrect input
def information
  puts "Thanks for using our Telephone book today. Our service is available to find an area/city by its telephone code or to find a telephone code by entering a city/area."
  start
end

def start
  puts "Would you like to enter an area or code today? Type: \"Area\" or \"Code\""
  input = gets.chomp.downcase
  if input == "code"
    by_code 
  elsif input == "area"
    by_area
  else 
    puts "Sorry I did not understand your input please try again"
    start
  end
end

def by_code
  puts "We have the following telephone codes on file:"
  list_codes
  puts "Which telephone code would you like the associated area for? Please enter one of the codes listed above"
  get_codes
end

def by_area
  puts "We have the following areas on file:"
  list_areas
  puts "Which area would you like the telephone code for? Please enter one of the areas listed above"
  get_areas
end

def list_codes
  puts @telephone_book.map {|key| key[:code]}
end

def list_areas
  puts @telephone_book.map {|key| key[:area]}
end

def get_codes
  input = gets.chomp
  code = @telephone_book.find {|code| code[:code] == input}
  if code
    puts "You entered telephone code: #{code[:code]}. The area for this telephone code is #{code[:area]}"
    puts "If you'd like to enter another telephone code then enter it now otherwise type exit to quit"
    get_codes
  elsif input.downcase  == "exit"
    abort_message
  else
    puts "Sorry your entered the wrong telephone code, please try again"
    get_codes
  end
end

def get_areas
  input = gets.chomp.capitalize
  area = @telephone_book.find {|area| area[:area] == input}
  if area
    puts "You entered #{input}. The telephone code for #{area[:area]} is #{area[:code]}"
    puts "If you'd like to enter another area then enter it now otherwise type exit to quit"
    get_areas
  elsif input.downcase == "exit" 
    abort_message
  else
    puts "Sorry your entered the wrong area, please try again"
    get_areas
  end
end

def abort_message
	abort("Thanks for using our service today it was a pleasure to help you, have a great day!")
end

information