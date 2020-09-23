module FunWithStrings
  def palindrome?
   self.gsub!(/[^0-9A-Za-z]/,'')
  if self.downcase == self.downcase.reverse
    return true
  else 
    return false
  end
  end
  def count_words
    self.gsub!(/[^A-Za-z]/,' ')
    words = self.split(' ')
    
    frequency = Hash.new(0)
    words.each { |word| frequency[word.downcase] += 1 }
    return frequency
  end
  def anagram_groups
    a = self.split
    if a.empty? == true
        return a 
    else
    a.group_by { |element| element.downcase.chars.sort }.values
    
    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end