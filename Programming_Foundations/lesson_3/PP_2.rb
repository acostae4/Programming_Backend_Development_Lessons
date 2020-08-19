#Practice Problems: Easy 2

#1. In this hash of people and their age, see if "Spot" is present.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.key?('Spot')

#2. Convert the string in the following ways (code will be executed on original munsters_description above):
munsters_description = "The Munsters are creepy in a good way."

p munsters_description.swapcase
p munsters_description.downcase.capitalize
p munsters_description.downcase
p munsters_description.upcase

#3. add ages for Marilyn and Spot to the existing hash
ages_two = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages_two.merge!(additional_ages)
p ages_two

#4. See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.match?(/Dino/)

#5. Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#6. How can we add the family pet "Dino" to our usual array:
flintstones_two = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones_two << "Dino"

#7. How can we add multiple items to our array? (Dino and Hoppy)
#flintstones_two.insert(-1, "Hoppy", "Edwin")
p flintstones_two.push("Hoppy").push("Edwin")

#8. Shorten this sentence, remove everything starting from house. 
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))

#9. Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
p statement.count('t')

#10. Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a 40 character wide table of Flintstone family members, how could we easily center that title above the table with spaces?
title = "Flintstone Family Members"
puts title.center(40)