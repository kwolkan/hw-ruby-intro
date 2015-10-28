# When done, submit this entire file to the autograder.
# Adding more comments just to test git
# Part 1

def sum arr
  # YOUR CODE HERE
  lSum = 0
  arr.each {|x| lSum += x}
  return lSum
end

def max_2_sum arr
  # takes an array of integers as an argument and 
  # returns the sum of its two largest elements. 
  # For an empty array it should return zero. 
  # For an array with just one element, it should return that element. 
  arr.sort!.reverse!
  lSum = 0
  i = 0
  arr.each {|x| 
    lSum += x
    i+=1
    break if i >= 2
  }
  return lSum
end

def sum_to_n? arr, n
  # takes an array of integers and an additional integer, n, as arguments and 
  # returns true if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.
  if arr.length < 1 
    return false # n==0
  end

  
  arr.each {|first_elem|
    arr = arr.drop(1)  
    arr.each {|second_elem|
      #puts first_elem + second_elem 
      if first_elem + second_elem == n
        #puts "Match! #{first_elem} + #{second_elem} = #{n}"
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # takes a string representing a name and returns the string "Hello, " concatenated with the name.
   return "Hello, #{name}" 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # takes a string and returns true if it starts with a consonant and false otherwise. 
  # (For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters!
  (s =~ /\A[^AEIOUaeiou]/ and s =~ /\A[a-zA-Z]/) ? (return true) : (return false)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # takes a string and returns true if the string represents a binary number that is a multiple of 4. 
  # NOTE: be sure it returns false if the string is not a valid binary number!
  (s =~ /[^01]/ || s.length == 0) ? (return false) : (return s.to_i(2)%4==0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError  if (isbn.length == 0 || price <= 0.0)
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{format("%.2f", @price)}"
  end
    
end

book = BookInStock.new("xxx-yyy-123", 1.0)
puts book.price_as_string

