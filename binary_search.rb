#Need to do this again, until it gets very very clear c:

require 'minitest/autorun'

class BinarySearch

  def binary_search(list, number)
    list.sort!
    head = list.length
    tail = 0
  	mid = head/2
    while(list[mid] != number) do
      if list[mid] > number
        if head == mid
          return nil
        end
        head = mid
        mid = ((mid + tail)/2)
      elsif list[mid] < number
        if tail == mid
          return nil
        end
        tail = mid
        mid = ((mid + head)/2)    
      end
    end
    mid
  end

end

  #IF NUMBER DOES NOT EXIST, RETURN A "NUMBER WASN'T FOUND!" MESSAGE
  #IT GETS STUCK ON THE 2nd TEST

describe BinarySearch do
  before do
    @binary_searcher = BinarySearch.new
  end
  
  describe "#binary_add" do
    it "should return 0 for first position" do
      @binary_searcher.binary_search([1,2,3,4,5,6], 1).must_equal 0
    end
    it "should return 5 for fifth position" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9], 6).must_equal 5
    end
    it "should return 9 for the number 10" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11], 10).must_equal 9
    end
    it "should return 13 for the last position" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 14).must_equal 13
    end
    it "should return the number in the first try" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14], 8).must_equal 7
    end
    it "should return the right number" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 9).must_equal 8
    end
    it "should return the expected number" do
      @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 9).must_equal 8
    end
    it "should return the list ordered and the right number" do
      @binary_searcher.binary_search([20,19,23,78,34,52,33,11], 11).must_equal 0
    end
    it "should return nil if number is not found" do
      assert_nil @binary_searcher.binary_search([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 90)
    end
    it "should return nil if number is not found" do
      assert_nil @binary_searcher.binary_search([6,7,8,9,10,11,12,13,14,15], 2)
    end
    it "should return nil if number is not found" do
      assert_nil @binary_searcher.binary_search([6,7,8,10,11,12,13,14,15], 9)
    end
  end
end