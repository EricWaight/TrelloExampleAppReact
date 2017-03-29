require 'array_sort'

  describe Array_sort do
    describe "bubble_sort" do
      context "when given an array" do
        it "returns sorted array" do
        sort = Array_sort.new
        array = [3, 2, 30, 26, 7]
        sort.bubble_sort (array)
        expect(array).to match_array([2, 3, 7, 26, 30])
      end
    end
end
end
