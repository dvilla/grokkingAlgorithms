#Selection sort, picking the highest number of an array

def selection_sort(arr)
  new_arr = []
  for i in 1..arr.length
    the_indx = 0
    highest = nil
    arr.each_with_index do |num1, indx|
      if highest.nil? || num1 > highest
        highest = num1
        the_indx = indx
      end
    end
    new_arr.push(arr.delete_at(the_indx))
  end
  new_arr
end

p selection_sort([2,9,3,18,3,4,10,30,101])
p selection_sort([1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2])
p selection_sort([1,3,8,9,0,0,0,5,7,8,2,2,4,5,6])
p selection_sort([-1,-64,-35,0,-66,-23,-45,-2,0])