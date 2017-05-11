# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  str.delete(str.downcase)
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  middle_index = (str.length / 2).floor
  str.length % 2 != 0 ? str[middle_index] : str[middle_index - 1, 2]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  str.count(VOWELS.join)
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  factorial_num = 1
  (1..num).to_a.each { |each_num| factorial_num *= each_num }
  factorial_num
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  return "" if arr.empty?
  stringified_arr = ""
  arr[0...-1].each { |el| stringified_arr << (el + separator) }
  stringified_arr << arr[-1]
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  weird_word = ""
  str.split("").each_with_index do |ch, el|
    el % 2 == 0 ? weird_word << ch.downcase : weird_word << ch.upcase
  end
  weird_word
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  reversed_arr = []
  str.split.each do |word|
    word.length >= 5 ? reversed_arr << word.reverse : reversed_arr << word
  end
  reversed_arr.join(' ')
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  n_fizz_and_or_buzz = []
  (1..n).to_a.each do |num|
    if num % 3 == 0 && num % 5 == 0
      n_fizz_and_or_buzz << 'fizzbuzz'
    elsif num % 3 == 0
      n_fizz_and_or_buzz << 'fizz'
    elsif num % 5 == 0
      n_fizz_and_or_buzz << 'buzz'
    else
      n_fizz_and_or_buzz << num
    end
  end

  n_fizz_and_or_buzz
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  (2...num).to_a.each { |n| return false if num % n == 0 }
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  factors_arr = []
  (1..num).to_a.each_with_index do |num1, idx1|
    (idx1 + 1..num).to_a.each do |num2|
      if num1 * num2 == num
        factors_arr << num1
        factors_arr << num2
      end
    end
  end
  factors_arr.sort
end

#Write a method that returns a sorted array of the prime factors of its argument
def prime_factors(num)
  prime_arr = []
  factors(num).each { |factor| prime_arr << factor if prime?(factor) }
  prime_arr
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).count
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd_one = []
  normal_one = []
  arr.each { |num| num % 2 == 0 ? odd_one << num : normal_one << num }
  odd_one.length == 1 ? odd_one[0] : normal_one[0]
end
