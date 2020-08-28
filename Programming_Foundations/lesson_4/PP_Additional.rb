#Practice Problems: Additional Problems

#1. Turn this array into a hash where the names are the keys and the values are the positions in the array

  flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
  flint_hash = {}
  flintstones.each_with_object(flint_hash) do |name, hash|
    hash[name] = flintstones.index(name)
  end
  p flint_hash

#2. Add up all of the ages from the Munster family hash: 

  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
  ages_array = ages.values
  sum = 0

  ages_array.each do |num|
    sum += num
  end
  p sum

#3. In the age hash, remove people with age 100 and greater.

  ages_two = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
  ages_two.delete_if {|_, value| value >= 100}
  p ages_two

#4. Pick out the minimum age from our current Munster family hash: 

  ages_three = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
  p ages_three.values.min

#5. Find the index of the first name that starts with "Be"

  flintstones_two = %w(Fred Barney Wilma Betty BamBam Pebbles)
  p flintstones_two.index {|name| name.include?("Be")}

#6. Amend this array so that the names are all shortened to just the first three characters. 

  flintstones_three = %w(Fred Barney Wilma Betty BamBam Pebbles)
  flintstones_three.map do |name|
    name.slice!(3, name.length)
  end
  p flintstones_three

#7. Create a hash that expresses the frequency with which each letter occurs in this string.

  statement = "The Flintstones Rock"
  new_statement = statement.split('')
  p new_statement
  hash_statement = {}
  new_statement.each_with_object(hash_statement) do |char, hash|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  p hash_statement

#8. What happens when we modify an array while we are iterating over it? What would the output be by this code?

  numbers = [1, 2, 3, 4]
  numbers.each do |number|
    p number
    numbers.shift(1)
  end

  #The numbers 1 and 3 will print, before the numbers array is empty

  numbers = [1, 2, 3, 4]
  numbers.each do |number|
    p number
    numbers.pop(1)
  end

  #The numbers 1 and 2 will print before the array is empty

#9. Write your own version of the rails titleize implementation

  words = "the flintstones rock"
  words_array = words.split(' ')
  words_array.map {|word| word.capitalize!}
  p words_array.join(' ')

#10. Given the munster hash, modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). 

  munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  munsters.each do |key, value|
    case value["age"]
    when 0...18
      value["age_group"] = "kid"
    when 18...65
      value["age_group"] = "adult"
    else
      value["age_group"] = "senior"
    end
  end
  p munsters