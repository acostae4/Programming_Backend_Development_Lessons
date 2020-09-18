#Small Problems: Easy 2
require 'date'

#How old is Teddy? 

  def display_age(name = "Teddy")
    age = rand(20..200)
    puts "#{name} is #{age} years old!"
  end
  display_age()

#How big is the room?

  def dimensions(l, w)
    l * w
  end

  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f

  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  puts "The area of the room is #{dimensions(length, width)} square meters (#{(dimensions(length, width) * 10.764).round(2)} square feet)"

#Tip Calculator

  puts "What is the bill?"
  bill = gets.chomp.to_f

  puts "What is the tip percentage?"
  tip = gets.chomp.to_f

  tip_total = bill * (tip / 100)
  bill_total = bill + tip_total

  puts "The tip is $#{tip_total.round(2)}"
  puts "The total is $#{bill_total.round(2)}"

#When will I Retire?

  puts "What is your age?"
  current_age = gets.chomp.to_i
  puts "At what age would you like to retire?"
  retire_age = gets.chomp.to_i

  current_year = Date.today.year
  years_left = retire_age - current_age

  puts "It's #{current_year}. You will retire in #{current_year + years_left}"
  puts "You have only #{years_left} years of work to go!"

#Greeting a user
  def greeting(name)
    if name.include?('!')
      puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
    else
      puts "Hello #{name}"
    end
  end

  puts "What is your name?"
  name = gets.chomp
  greeting(name)

#Odd Numbers

  (1..99).collect {|i| puts i if i.odd?}

#Even Numbers

  (1..99).collect {|i| puts i if i.even?}

#Sum or Product of Consecutive Integers

  def sum(num)
    answer = 0
    1.upto(num) {|n| answer += n}
    answer
  end

  def product(num)
    answer = 1
    1.upto(num) {|n| answer *= n}
    answer
  end

  puts "Please enter an integer greater than 0: "
  integer = gets.chomp.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp 

  if operation == 's'
    sum = sum(integer)
    puts "The sum of the integers between 1 and #{integer} is #{sum}"
  elsif operation == 'p'
    product = product(integer)
    puts "The sum of the integers between 1 and #{integer} is #{product}"
  else
    puts "Try again!"
  end

#String Assignment

  #The program will output: 
  #BOB
  #BOB

  #It mutates both variables because Ruby uses pass by reference for this instance. 

#Mutation
  array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
  array2 = []
  array1.each { |value| array2 << value }
  array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
  puts array2

  #Will output: ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

  #The each loop passed references from array 1 to array2 so when the second each loop uses upcase!, it alters both arrays. 
