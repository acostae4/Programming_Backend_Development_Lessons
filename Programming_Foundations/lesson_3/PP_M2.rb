#Practice Problems: Medium 2

#1. Predict how the values and object ids will change throughout the flow of the code below:

  def fun_with_ids
    a_outer = 42
    b_outer = "forty two"
    c_outer = [42]
    d_outer = c_outer[0]

    a_outer_id = a_outer.object_id
    b_outer_id = b_outer.object_id
    c_outer_id = c_outer.object_id
    d_outer_id = d_outer.object_id

    puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
    puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
    puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
    puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."
    puts

    1.times do
      a_outer_inner_id = a_outer.object_id
      b_outer_inner_id = b_outer.object_id
      c_outer_inner_id = c_outer.object_id
      d_outer_inner_id = d_outer.object_id

      puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
      puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
      puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
      puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
      puts

      a_outer = 22
      b_outer = "thirty three"
      c_outer = [44]
      d_outer = c_outer[0]

      puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
      puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
      puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
      puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
      puts


      a_inner = a_outer
      b_inner = b_outer
      c_inner = c_outer
      d_inner = c_inner[0]

      a_inner_id = a_inner.object_id
      b_inner_id = b_inner.object_id
      c_inner_id = c_inner.object_id
      d_inner_id = d_inner.object_id

      puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
      puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
      puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
      puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
      puts
    end

    puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
    puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
    puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
    puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
    puts

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  end
  fun_with_ids

#2. Using method calls accepts values as paramaters, passing the same values and object id's. This is different to the problem 1 where the values are reassigned to a different variable.

#3. Study the following code and state what will be displayed...and why:

  def tricky_method(a_string_param, an_array_param)
    a_string_param += "rutabaga"
    an_array_param << "rutabaga"
  end

  my_string = "pumpkins"
  my_array = ["pumpkins"]
  tricky_method(my_string, my_array)

  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"

  #"My string looks like this now: pumpkins"
  #"My array looks like this now: ["pumpkins", "rutabaga"]"
  # += creates a new string object while << affects the same object that was passed into the method. 

#4. To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

  def tricky_method_two(a_string_param, an_array_param)
    a_string_param << 'rutabaga'
    an_array_param = ['pumpkins', 'rutabaga']
  end

  my_string_two = "pumpkins"
  my_array_two = ["pumpkins"]
  tricky_method_two(my_string_two, my_array_two)

  puts "My string looks like this now: #{my_string_two}"
  puts "My array looks like this now: #{my_array_two}"

#5. How can we refactor this practice problem to make the result easier to predict and easier for the next programmer to maintain?

  def tricky_method_three(a_string_param, an_array_param)
    a_string_param += "rutabaga"
    an_array_param += ["rutabaga"]
    return a_string_param, an_array_param
  end

  my_string_three = "pumpkins"
  my_array_three = ["pumpkins"]
  my_string_three, my_array_three = tricky_method_three(my_string_three, my_array_three)

  puts "My string looks like this now: #{my_string_three}"
  puts "My array looks like this now: #{my_array_three}"

  #Makes it clear what objects are being mutated, and where the values will be assigned. 

#6. How could the unnecessary duplication in this method be removed?

  # def color_valid(color)
  #   if color == "blue" || color == "green"
  #     true
  #   else
  #     false
  #   end
  # end

  def color_valid(color)
    color == "blue" || color == "green"
  end

  #Ruby will evaluate statements and return boolean values automatically, so the if/else statement in the first method is unnecessary.  
