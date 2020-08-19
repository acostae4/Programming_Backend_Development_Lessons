#Practice Problems: Easy 1 

#1. What would you expect the code below to print out?
  numbers = [1, 2, 2, 3]
  numbers.uniq

  puts numbers
  # => 1 2 2 3
  # The .uniq() method doesn't contain the bang !, so it doesn't modify the numbers object. 

#2. Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

  #The ! is called a bang that is a part of Ruby method names and not syntax. The ? is apart of ruby method names as well.
    # what is != and where should you use it?
      #!= is 'not equals' and can be used in boolean expressions
    # put ! before something, like !user_name
      #turns to the opposite boolean value
    # put ! after something, like words.uniq!
      #Part of the method name for some methods that will modify the original object. 
    # put ? before something
      #Used as the ternary operator for an if...else
    # put ? after something
      #Part of the ruby method naming convention
    # put !! before something, like !!user_name
      #Boolean equivalent

#3. Replace the word "important" with "urgent" in this string:

  advice = "Few things in life are as important as house training your pet dinosaur."
  advice.gsub!('important', 'urgent')
  puts advice

#4. What do the following method calls do (assume we reset numbers to the original array between method calls)?
  numbers = [1,2,3,4,5]
  numbers.delete_at(1)
    #Deletes the number at index 1 (2)
  numbers.delete(1)
    #Deletes all items in numbers that are equal to 1. 

#5. Programmatically determine if 42 lies between 10 and 100.
  puts (10..100).cover?(42)

#6. Show two different ways to put the expected "Four score and " in front of it.

  famous_words = "seven years ago..."
  famous_words.prepend('Four score and ')
  puts famous_words

  famous_words_two = "seven years ago..."
  famous_words_two.insert(0, 'Four score and ')
  puts famous_words_two

#7. Make this into an un-nested array: 

  arr = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
  p arr.flatten!

#8. Turn this into an array containing only two elements: Barney's name and Barney's number: 

  flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
  p flintstones.assoc("Barney")