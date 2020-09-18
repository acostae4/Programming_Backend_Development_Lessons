#Small Problems: Easy 1

#Repeat Yourself: 

def repeat(str, num)
  num.times {|x| puts str}
end
repeat("Hello", 6)

#Odd

def is_odd?(int)
  int % 2 == 1
end
puts is_odd?(2)    
puts is_odd?(5) 
puts is_odd?(-17)  
puts is_odd?(-8)   
puts is_odd?(0)    
puts is_odd?(7) 
puts

#List of Digits

def digit_list(int)
  int.to_s.split('').map(&:to_i)
end
puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4] 

#How Many?

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  arr.each_with_object({}) do |type, hash|
    if hash.has_key?(type)
      hash[type] += 1
    else
      hash[type] = 1
    end
  end
end
p count_occurrences(vehicles)
puts

#Reverse It (Part 1)

def reverse_sentence(str)
  new_string = str.split(' ').reverse.join(' ')
end
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts

#Reverse It (Part 2)

def reverse_words(str)
  str_array = str.split.map do |word|
                word.split('').shuffle.join
              end
  str_array.join(' ')
end
puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')  
puts

#Stingy Strings

def stringy (int)
  binary_string = ''

  int.times do |i| 
    if i.even?
      binary_string += '1'
    else
      binary_string += '0'
    end
  end

  binary_string
end
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts

#Array Average

def average(array)
  array.sum / array.size
end

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts

#Sum of Digits

def sum(int)
  digit_array = int.to_s.split('').map(&:to_i)
  digit_array.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts

#What's my Bonus?

def calculate_bonus(int, bool)
  bool ? int / 2 : 0
end
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000