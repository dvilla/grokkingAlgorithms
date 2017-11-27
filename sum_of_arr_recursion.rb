def sum_of_arr_recursion(arr)
  return 0 if arr.empty?
  return arr.first + sum_of_arr_recursion(arr.drop(1))
end

p sum_of_arr_recursion([1,2,3,4,5,6])

#This is so cool because arr.drop(1) does not mutate assert_response
#And only passes a copy of the array minus the first element
#The original array is never affected