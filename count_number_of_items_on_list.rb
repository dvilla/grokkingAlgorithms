def count_number_of_times_in_list(list)
  return 0 if list.empty?
  return 1 + count_number_of_times_in_list(list.drop(1))
end

p count_number_of_times_in_list([1,4,7,3,9,0,7,5,4,6,7])
