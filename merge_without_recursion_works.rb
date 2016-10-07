# sorter = MergeSort.new
# => #<MergeSort:0x007f81a19e94e8>
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
require 'pry'
class MergeSort

    def split(ary)
        #splits and sorts array
        r = ary.count
        p = 0
        q = (r+p)/2
        sub_one = ary[p,q].sort
        sub_two = ary[q,r].sort
        new_ary = []
        # as long as there are elements in sub_one and sub_two
        # pushes lowest element in 0 position to new_ary
        while sub_one[0] && sub_two[0] != nil
            if sub_one[0] < sub_two[0]
                new_ary.push(sub_one.shift)
            else sub_one[0] > sub_two[0]
                new_ary.push(sub_two.shift)
            end
        end
        
        # if either sub array is empty, pushes rest of other array
        if sub_one[0] == nil
            while sub_two[0] != nil
                new_ary.push(sub_two.shift)
            end
        end

        if sub_two[0] == nil
            while sub_one[0] != nil
                new_ary.push(sub_one.shift)
            end
        end

        p new_ary
 
    end
end

sorter = MergeSort.new
sorter.split(["d","b","a","c","f", "z", "q"])