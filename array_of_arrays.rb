#Take an array, count each element and return an array containing arrays with the number
#and the times it appear
#[1,2,3,2,5,8] => [[1,1],[2,2],[3,1],[5,1],[8,1]]

def count_elements_in_array(arr)
  arr.map do |num|
    [num, arr.count(num)]
  end.uniq
end

p count_elements_in_array([1,1,1,2,3,3,4])


#All done