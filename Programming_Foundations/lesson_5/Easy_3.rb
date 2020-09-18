#Small Problems: Easy 3

#Searching 101
num_arr = []

puts "Enter the 1st number:"
first = gets.chomp.to_i
num_arr << first

puts "Enter the 2nd number:"
second = gets.chomp.to_i
num_arr << second

puts "Enter the 3rd number:"
third = gets.chomp.to_i
num_arr << third
puts "Enter the 4th number:"
fourth = gets.chomp.to_i
num_arr << fourth

puts "Enter the 5th number:"
fifth = gets.chomp.to_i
num_arr << fifth

puts "Enter the last number:"
last = gets.chomp.to_i

if num_arr.include?(last)
  puts "The number #{last} appears in #{num_arr}"
else
  puts "The number #{last} does not appear in #{num_arr}"
end

#Arithmetic Integer

puts "Enter the first number"
first = gets.chomp.to_i
puts "Enter the second number"
second = gets.chomp.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"

#Counting the Number of Characters

def char_count(input)
  input.delete(" ").size
end

puts "Please write a word or multiple words: "
word_input = gets.chomp
puts "There are #{char_count(word_input)} characters in: #{word_input}"

#Multiplying Two Numbers

def multiply(a, b)
  a * b
end
p multiply(5, 3) == 15

#Squaring an Argument

def square(num)
  multiply(num, num)
end
p square(5) == 25
p square(-8) == 64

#Exclusive Or

def xor?(first, second)
  if first == true && second == false
    true
  elsif first == false && second == true
    true
  else
    false
  end
end
  #Shorter version

# def xor?(value1, value2)
#   return true if value1 && !value2
#   return true if value2 && !value1
#   false
# end

  #Even shorter version
  # def xor?(value1, value2)
#     !!((value1 && !value2) || (value2 && !value1))
#   end
puts
p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

#Odd Lists

def oddities(arr)
  new_arr = []
  arr.each_with_index {|num, index| new_arr << num if index.even?}
  new_arr
end 
puts
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

#Palindromic Strings (Part 1)

def palindrome?(string)
  string.reverse == string
end
puts 
p palindrome?('madam') == true
p palindrome?('Madam') == false          
p palindrome?("madam i'm adam") == false 
p palindrome?('356653') == true

#Palindromic Strings (Part 2)

def real_palindrome?(string)
  new_string = string.downcase.gsub(/[, ']/, '')
  new_string.reverse == new_string
end
puts
p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true
p real_palindrome?("Madam, I'm Adam") == true
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

#Palindromic Numbers

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true