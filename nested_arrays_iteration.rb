def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  new_array = []
  row_index = 0
  
  while row_index < src.count do
    element_index = 0
    inner_results = []
    
    while element_index < src[row_index].count do
      if ((src[row_index][element_index][0] != nil) && (src[row_index][element_index][1] != nil))
        inner_results << src[row_index][element_index]
        inner_results.sort!
      end
      element_index += 1
      
    end
    new_array.push(inner_results[1])
    row_index += 1
    
  end  
  new_array
  
end
find_greater_pair([[1,3], [5,2], [6,-10]])
