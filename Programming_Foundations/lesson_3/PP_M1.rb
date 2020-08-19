#Practice Problems: Medium 1

#1. For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

  10.times {|i| puts (" " * i) + "The Flintstones Rock!"}

#2. The result of the following statement will be an error. Why is this and what are two possible ways to fix this?
#puts "the value of 40 + 2 is " + (40 + 2)

  #The statement tries to combine a string with an integer value which throws an error. To fix this, you can change the integer value to a string using ".to_s" or add it to the string using string interpolation #{}. 

#3. Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? 
  
  def factors(number)
    divisor = number
    factors = []
    while divisor > 0 do
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end 
    factors
  end
  p factors(9)

#4. She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

  def rolling_buffer1(buffer, max_buffer_size, new_element)
    buffer << new_element
    buffer.shift if buffer.size > max_buffer_size
    buffer
  end

  def rolling_buffer2(input_array, max_buffer_size, new_element)
    buffer = input_array + [new_element]
    buffer.shift if buffer.size > max_buffer_size
    buffer
  end

  #The first implementation will alter the original argument, buffer, and will be modified when returned. In the second implementation, the method will not alter the input argument. 

#5. How would you fix this so that it works?

  def fib(first_num, second_num)
    limit = 15
    while first_num + second_num < limit
      sum = first_num + second_num
      first_num = second_num
      second_num = sum
    end
    sum
  end

  result = fib(0, 1)
  puts "result is #{result}"
  #The limit variable was initialized outside of the method definition, which cannot access variables outside of its definition. So placing the variable within the method definition will allow the fib method to uitlize limit. 

#6. What is the output of the following code?
  #The output is: 34

  answer = 42

  def mess_with_it(some_number)
    some_number += 8
  end

  new_answer = mess_with_it(answer)

  p answer - 8

#7. Did the family's data get ransacked? Why or why not?
  #The family's data has been altered, due to hashes being mutable objects. THe demo_hash parameter used isn't reassigned to a different object, but is used as the original hash given. 

  munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }

  def mess_with_demographics(demo_hash)
    demo_hash.values.each do |family_member|
      family_member["age"] += 42
      family_member["gender"] = "other"
    end
  end

  mess_with_demographics(munsters)

#8. What is the result of the following call?
  #The result is paper

  def rps(fist1, fist2)
    if fist1 == "rock"
      (fist2 == "paper") ? "paper" : "rock"
    elsif fist1 == "paper"
      (fist2 == "scissors") ? "scissors" : "paper"
    else
      (fist2 == "rock") ? "rock" : "scissors"
    end
  end

  puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

#9. What would be the return value of the following method invocation?
  #The return value = "no"

  def foo(param = "no")
    "yes"
  end

  def bar(param = "no")
    param == "no" ? "yes" : "no"
  end

  p bar(foo)
