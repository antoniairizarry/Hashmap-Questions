def permutations?(string1, string2)
  return true if string1 == string2
  return false if string1.length != string2.length
  
  hash = {}
  
  string1.split('').each do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  
  string2.split('').each do |letter|
    return false if !hash.key?(letter)
    if hash[letter] > 0
      hash[letter] -= 1
    else
      return false
    end
  end
  
  return true
  
end