# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE here
  pace = 0
  sum = 0 
  
  if(array.any? == 1)
    return 0
    end
  else 
  while pace < array.count
    sum += array[pace]
    pace +=1
    
  end
  return sum 
  
  
end

def max_2_sum(array)
  # YOUR CODE HERE
pace = 0 
max1 =  -100000
max2 =  -100000
maxLoc = 0
final = 0


if(array.length == 0)
    return 0 
    end
else 
while(pace < array.length)

    if max1 < array[pace]
        max1 = array[pace]
        maxLoc = pace
    end
    pace += 1
end
pace = 0
while(pace < array.length)
    
    if(max2 < array[pace] && pace != maxLoc)
        max2 = array[pace]
    end
    pace += 1
end
if(max2 == -100000)
    max2 = 0
end

final = max1 + max2
return final
end



require 'set'

def sum_to_n?(array, num)
  # YOUR CODE HERE
   seen = Set.new 
   array.each do |x|
   return true if seen.include?(num - x)
   seen.add(x)
   end
   return false
 
end

# Part 2

def hello(name)
    str = "Hello, "
    str << name
    return str
end

def binary_multiple_of_4?(s)
  if s.class == String 
    if s.count('01') != s.size || s.length < 1
      return false
    elsif /^[10]*00$/.match(s) || s == "0"
      return true
    else
      return false
    end
  else
    binstr = s.to_s
    if binstr.count('01') != binstr.size
        if s.to_s(8).count('01') == s.to_s(8).size
            binstr = s.to_s(8)
            binary_multiple_of_4?(binstr)
        end
    elsif binstr.count('01') == binstr.size
      if /^[10]*00$/.match(binstr)
        return true
      else
        return false
      end
    else
      puts "'#{s}' is not a valid binary number!"
      return false
    end
  end
end

# Part 3

class BookInStock

    def initialize(isbn,price)
    
    if isbn.empty? == true
        raise ArgumentError, "empty array"
    else
        @isbn = isbn
    end
    
    if price <= 0 
        raise ArgumentError, "price less than zero"
    else
        @price = price
    end
    
    end
    
    
    def isbn
        return @isbn
    end
    def price
        return @price
    end
    
    def price=(newprice)
        @price = newprice
    end
    def isbn=(newisbn)
        @isbn = newisbn
    end
    
    def price_as_string()

    fmt = "%0.2f" % @price
    cost_dollars, cost_cents = fmt.split '.'
    cost_dollars << "." << cost_cents
    cost_dollars.prepend("$")
    
    return cost_dollars
        
    end
        
end
