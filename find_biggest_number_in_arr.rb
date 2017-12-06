def find_bigggest_number_in_arr(arr)
  return "Array is empty" if arr.empty?
  return arr[0] if arr.length == 1
  if arr[0] > arr[1]
    find_bigggest_number_in_arr(arr[0..0] + arr[2..-1])
  else
    find_bigggest_number_in_arr(arr[1..-1])
  end
end

cool_array = [1,56,78,99,42,456,2,89,4,7,8,0,23,45,778]

p cool_array

p find_bigggest_number_in_arr(cool_array)

p cool_array

#Finding the biggest number in an array using recursion... Yup, don't know
#How clean is this, but I'm pretty sure there's a better way to do it :D
#Also couldn't find in ruby a way to return an array without one element
#Picked up by index. 