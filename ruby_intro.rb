# When done, submit this entire file to the autograder.

# Part 1

#Takes an array of integers as an argument and returns the sum of its elements.
#Call inject method
def sum arr
  arr.inject(0,:+)
end

#sort the array first, then add the last two elements
def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sortedarr = arr.sort
  sum(sortedarr.last(2))
end

=begin
  a little bit high complexity approach, fixes a certain number then searching 
  among the array to find a number which sum with it and can get the n value we want
  if so, return true
=end
def sum_to_n? arr, n
  i=0
  while i <arr.length
    j=i+1
    while j<arr.length
      if arr[i]+arr[j] == n
        return true
      end
      j+=1
    end
    i+=1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

#Use regular expression to identify if the first letter is a consonant.  
def starts_with_consonant? s
  s=~ /\A(?=[^aeiou])(?=[a-zA-Z])/i
end

def binary_multiple_of_4? s
  binnum = s.to_i(2)
	return false if (/[^01]/===s)
	return false if s.empty?
	return true if binnum % 4 == 0
end

# Part 3

#Create a class BookInStock with two attributes, isbn and price
#Check some error condition
#Create a method of the class which can output the price with two decimal places
class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
    raise ArgumentError, "Error:the ISBN number is empty string" if isbn.empty?
    raise ArgumentError, "Error:the price cannot less or equal to 0" if price <= 0
  end
  
  def price_as_string
    return sprintf("$%.2f", @price)
  end
end

