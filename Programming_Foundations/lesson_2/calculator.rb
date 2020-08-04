require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  Float(num) rescue false
end

loop do
  first_number = 0
  loop do
    prompt(MESSAGES['first_input'])
    first_number = Kernel.gets().chomp().to_f()

    if valid_number?(first_number)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  second_number = 0
  loop do
    prompt(MESSAGES['second_input'])
    second_number = Kernel.gets().chomp().to_f()

    if valid_number?(second_number)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  operation_prompt = <<-MSG
    Please Enter the operation:
    1. add 
    2. subtract 
    3. multiplication 
    4. division
  MSG
  prompt(operation_prompt)

  operation = 0
  loop do
    operation = Kernel.gets().chomp().to_i()

    if [1, 2, 3, 4].include?(operation)
      break
    else
      prompt(MESSAGES['valid_operation'])
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
             first_number / second_number
           end

  prompt(answer)

  prompt(MESSAGES['continue'])
  continue = Kernel.gets().chomp()
  continue.downcase!

  break unless continue.start_with?("y")
end
