def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number? (num)
  num != 0
end

loop do
  first_number = 0
  loop do
    prompt("Please Enter the first number")
    first_number = Kernel.gets().chomp().to_i()

    if valid_number?(first_number)
      break
    else
      prompt("Not a valid number...Try again")
    end
  end

  second_number = 0
  loop do
    prompt("Please Enter the second number")
    second_number = Kernel.gets().chomp().to_i()

    if valid_number?(second_number)
      break
    else
      prompt("Not a valid number...Try again")
    end
  end

  prompt("Please Enter the operation: 1) add 2) subtract 3) multiplication 4) division")
  operation = 0
  loop do
    operation = Kernel.gets().chomp().to_i()

    if [1,2,3,4].include?(operation)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  answer = case operation
            when 1
              first_number + second_number
            when 2
              first_number - second_number
            when 3
              first_number * second_number
            when 4
              first_number.to_f / second_number
            end

  prompt(answer)

  prompt("Would you like to make another calculation? (Y for yes)")
  continue = Kernel.gets().chomp()
  continue.downcase!

  break unless continue.start_with?("y")
end
