def intersection(list1, list2)
  return [] if list1 == nil || list2 == nil
  
  hash = {}
  
  list1.each do |element|
    hash[element] = true
  end
  
  result = []
  
  list2.each do |number|
    if hash.has_key?(number)
      result << number
    end
  end
  result
  
end