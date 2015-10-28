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
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

puts sum_to_n? [3,5,1,0,6,7,8,9], 9

puts(sum_to_n?([1,2,3,4,5], 5)) #.to be true
puts(sum_to_n?([3,0,5], 5)) #.to be true
puts(sum_to_n?([-1,-2,3,4,5,-8], 12)) #.to be false
puts(sum_to_n?([-1,-2,3,4,6,-8], 12)) #.to be false
