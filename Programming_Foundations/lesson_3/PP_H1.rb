#Practice Problems: Hard 1

#1. What do you expect to happen when the greeting variable is referenced in the last line of the code below?

  if false
    greeting = “hello world”
  end

  greeting
  #"greeting" is nil, since the if statement will never execute. No exception is thrown because even though the if statement will not execute, the greeting variable is initialized there, setting greeting to nil.  

#2. What is the result of the last line in the code below?

  greetings = { a: 'hi' }
  informal_greeting = greetings[:a]
  informal_greeting << ' there'

  puts informal_greeting  #  => "hi there"
  puts greetings

  #The result of the last line: {:a => 'hi there'}
  #<< modifies the caller, which is greetings

#3. What will be printed by each of these code groups?

  #A) "one is: one" "two is: two" "three is: three"

  def mess_with_vars(one, two, three)
    one = two
    two = three
    three = one
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  #B) "one is: one" "two is: two" "three is: three"

  def mess_with_vars(one, two, three)
    one = "two"
    two = "three"
    three = "one"
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

  #C) "one is: two" "two is: three" "three is: one"

  def mess_with_vars(one, two, three)
    one.gsub!("one","two")
    two.gsub!("two","three")
    three.gsub!("three","one")
  end

  one = "one"
  two = "two"
  three = "three"

  mess_with_vars(one, two, three)

  puts "one is: #{one}"
  puts "two is: #{two}"
  puts "three is: #{three}"

#4. Help Ben fix his code.

  def dot_separated_ip_address?(input_string)
    dot_separated_words = input_string.split(".")
    return false if dot_separated_words.size != 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    return true
  end