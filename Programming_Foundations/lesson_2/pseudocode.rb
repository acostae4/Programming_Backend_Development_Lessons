#1. A method that returns the sum of two numbers

    #Given two numbers 
    # Create a method that take two parameters (num1 and num 2)
    # within this method return the sum of the two arguments
    #Print the returned value from the method

  #Formal

    #START
    #Given two integers from the user

    #SET num_1 = first integer given
    #SET num_2 = second integer given

    #Return the value of num_1 + num_2
    #PRINT the new value


#2. A method that takes an array of strings, and returns a string that is all those strings concatenated together

    #Given an array of strings
    # Create a method that take an array as the parameter
    # Iterate through the array, concatinating the strings together.
    #Return the concatinated string.
    #Print the new string

  #Formal

    #START
    #Given an array of strings

    #SET count = 0
    #SET saved_string = value within the string array at space 1

    #WHILE count <= length of the string array
      #SET current_string += value of the string at space count's value
      #count += 1
    #PRINT saved_string
    #END

#3. A method that takes an array of integers, and returns a new array with every other element

    #Given an array of integers
    # Create a method that take an array as the parameter
    # Iterate through the array
    #   -Store every other element within the given array in a new array
    # Return the new array
    #Print the new array

  #Formal

    #START
    #Given an array of integers

    #SET count = 0
    #SET new_array = []

    #WHILE count <= length of the string array
      #SET current_number = value of within the integer array at space "count"
      #IF current_number.isOdd?
        #new_array.push(current_number)
      #ELSE
        #go to the next iteration
      
      #count += 1
    #PRINT new_array
    #END