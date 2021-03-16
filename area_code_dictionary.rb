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

def initialise
  puts "Thanks for using our Telephone book today, Would you like to find an area telephone code today?"
  areas_or_code
end

def areas_or_code
  input = gets.chomp.downcase
  if input == "yes"
    by_area
  elsif input == "no"
    puts "Would you like to find an area by using a telephone code?"
    input = gets.chomp.downcase
    if input == "yes"
      by_code
    else
      puts "You haven't entered anything so I will return you to the main menu"
      initialise
    end
  else
    puts "You seem to have not entered anything, try again please!"
    areas_or_code
  end
end

def by_area
  puts "We have the following areas on file:"
  list_areas
  puts "Which area would you like the telephone code for? Please enter one of the areas listed above"
  get_areas
end

def by_code
  puts "We have the following telephone codes on file:"
  list_codes
  puts "Which telephone code would you like the associated area for? Please enter one of the codes listed above"
  get_codes
end


def get_areas
  input = gets.chomp.capitalize
  area = @telephone_book.find {|area| area[:area] == input}
  if area
    puts "The telephone code for #{area[:area]} is #{area[:code]}"
    another_input_areas
  else
    puts "Sorry your entered the wrong area, please try again"
    get_areas
  end
end

def get_codes
  input = gets.chomp
  code = @telephone_book.find {|code| code[:code] == input}
  if code
    puts "The area for #{code[:code]} telephone code is #{code[:area]}"
    another_input_codes
  else
    puts "Sorry your entered the wrong telephone code, please try again"
    get_codes
  end
end

def list_areas
  puts @telephone_book.map {|key| key[:area]}
end

def list_codes
  puts @telephone_book.map {|key| key[:code]}
end

def another_input_codes
  puts "Would you like to enter another telephone code?"
  input = gets.chomp.downcase
  if input == "yes"
    puts "Ok, so which telephone code would you like to know the area for?"
    get_codes
  elsif input == "no"
    abort("Great, thank you for using our free service today hope you have a nice day!")
  else
    puts "Sorry I don't understand, please type yes or no"
    another_input_codes
  end
end

def another_input_areas
  puts "Would you like to enter another area? Please type yes or no"
  input = gets.chomp.downcase
  if input == "yes"
    puts "Ok, so which area would you like to know the telephone code for?"
    get_areas
  elsif input == "no"
    abort("Great, thank you for using our free service today hope you have a nice day!")
  else
    puts "Sorry I don't understand, please type yes or no"
    another_input_areas
  end
end

initialise


