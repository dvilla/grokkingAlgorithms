#Write a method that sorts an array, using quicksort algorithm!

def quicksort(arr)
  pivot = arr[arr.length/2]
  greater = []
  less = []
  if arr.length < 2 
    return arr
  end
  arr.each do |num|
    if num > pivot
      greater << num
    elsif num < pivot
      less << num
    end
  end
  quicksort(less) + [pivot] + quicksort(greater)
end

array = [8,7,5,23,69,12,78,41,93,31,45,2]

sorted_array = [1,2,3,4,5,6,7,8,9] 

p quicksort(array)

#Done! :)
