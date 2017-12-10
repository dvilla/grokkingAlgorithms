def binary_search_recursion(arr, num)
  arr.sort!
  p arr
  index = arr.length/2
  if num == arr[index]
    return arr[index]
  else
    if arr[index] > num
      binary_search_recursion(arr[0...index], num)
    else 
      binary_search_recursion(arr[index..-1], num)
    end
  end
end

array = [90,454,73,12,98,45,27,84,12,34,88,46,92,65,32]

index_of_number = binary_search_recursion(array, 27)

p index_of_number

#Doing a binary search using recursion, this is so fun to be honest, I really like
#thinking about how it should call itself with what portion of Data. 