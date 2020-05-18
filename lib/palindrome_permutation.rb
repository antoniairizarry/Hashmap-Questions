
def palindrome_permutation?(string)
  return true if string.empty?
  
  hash = {}
  
  string.split("").each do |letter|
    if hash[letter].nil?
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end
  
  odd = 0
  
  hash.values.each do |v|
    odd += 1 if v.odd?
  end
  if odd <= 1
    return true
  else
    return false
  end
end