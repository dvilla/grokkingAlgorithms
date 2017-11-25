def sum_of_arr(arr)
  total = 0
  arr.each do |num|
    total += num
  end
  puts total
end

sum_of_arr([1,2,3,4,5])