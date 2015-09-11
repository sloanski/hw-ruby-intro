# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  total = 0
  arr.each do |x|
    puts x
    total += x
end
total
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  arr[-1] + arr[-2]
end

def sum_to_n? arr, n

  #(arr.empty? && arr.length == 1) || arr.permutation(2).any? { |a, b| a + b == n }
  
  if arr.empty? || arr.length == 1
    return false
  else if arr.permutation(2).any? { |a, b| a + b == n }
    return true
  else
    return false
  end
  end
end 

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  #letters = s.split("")
  #return false if s.empty?
  #return true if s =~ /[0-9]/
 # return true if letters[0] == /[aeiouAEIOU*]/
  #return true if s.starts_with(/[aeiouAEIOU*]/)
   #s =~ /^[^aeiou]/i 
   #return false if s.empty?
   #return true if s =~ /\A[^aeiou]/
   return true if s[0] =~ /[bcdfghjklmnprstvwxyz]+/i
   
 
end

def binary_multiple_of_4? s
  #return false if s =~ /[A-Za-z]/
  if s =~ /^[0-1]+$/
  return s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end 
  
 
 
  
  def price_as_string
    format("$%.2f", @price)
    #return number_to_currency(r, precision: 2)
  end
    
  
  
  
end
