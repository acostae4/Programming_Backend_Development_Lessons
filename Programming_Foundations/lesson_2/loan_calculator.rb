def float_valid?(num)
  Float(num) rescue false
end

def integer_valid?(num)
  Integer(num) rescue false
end

loop do
  loan_amount = ''
  loop do
    puts "Welcome to my Mortgage/Loan Calculator!"
    puts "What is the loan amount in dollars?"
    loan_amount = gets.chomp
    if float_valid?(loan_amount)
      break
    else
      puts "Invalid input, please try again!"
    end
  end

  interest_rate = ''
  loop do
    puts "What is the monthly interest rate %?"
    interest_rate = gets.chomp
    if float_valid?(interest_rate)
      break
    else
      puts "Invalid input, please try again!"
    end
  end

  loan_duration = ''
  loop do
    puts "What is the loan duration in months?"
    loan_duration = gets.chomp
    if integer_valid?(loan_duration)
      break
    else
      puts "Invalid input, please try again!"
    end
  end

  annual_interest = interest_rate.to_f / 100
  monthly_interest = annual_interest / 12
  loan_calculation = loan_amount.to_f * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration.to_i)))

  puts <<-MSG
  Results:
  -  Loan amount = #{loan_amount}
  -  Interest rate = #{interest_rate}%
  -  Loan duration in months = #{loan_duration}
  => Monthly Payment = $#{loan_calculation.round(2)}
MSG

  puts "Would you like to continue? (Type 'Y' to continue)"
  continue = gets.chomp
  continue.downcase!
  break unless continue.start_with?("y")
end
