dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city name from hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on a given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name?"
  puts "Press Y or N"
  user_input = gets.chomp.downcase
  break if user_input != "y"
  puts "Which city do you want the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your city:"
  user_city = gets.chomp
  if dial_book.include?(user_city)
    puts "The area code for #{user_city} is #{get_area_code(dial_book, user_city)}"
  else
    puts "You enter an invalid city."
  end
end
