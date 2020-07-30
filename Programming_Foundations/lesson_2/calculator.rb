#Asks the user for two numbers 
puts "Please Enter the first number"
first_number = Kernel.gets().chomp().to_i()
puts "Please Enter the second number"
second_number = Kernel.gets().chomp().to_i()
#Asks the user for the operation to perform
puts "Please Enter the operation: 1) add 2) subtract 3) multiplication 4) division"
operation = Kernel.gets().chomp().to_i()

#Performs operation on the two numbers using a case statement
def calculator(num_1, num_2, operation)
  case operation
  when 1
    return num_1 + num_2
  when 2
    return num_1 - num_2
  when 3
    return num_1 * num_2
  when 4
    return num_1.to_f / num_2
  else
    return "Calculation could'nt be completed."
  end
end

#Displays the calculator method results
Kernel.puts(calculator(first_number, second_number, operation))