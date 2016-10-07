require 'pry'


class MergeSort

    def initialize
        @final_ary = []
        @ult_ary = []
    end

    # divides array recursively into smallest possible elements
    def divide(ary)
        left = ary.take(ary.count/2)
        right = ary - left
        if left.count > 1
            divide(left)
            divide(right)  
        end

        if left.count == 1
            @final_ary.push(left)
        end

        if right.count == 1
            @final_ary.push(right)
        end

        if @final_ary.count == ary.count * 2
             merge(@final_ary, 0)
             p @final_ary
        end

    end

    # tries to build back sorted array recursively, but doesn't do it very well. . . yet
    
    def merge(ary, indice)
        
        #you hit a base case & account for outliers

        while (indice) < (ary.count)
            if ary[indice][0] < ary[indice + 1][0]
                current_sort = ary[indice] + ary[indice+1]
                indice = indice + 2
            elsif ary[indice][0] > ary[indice+1][0]
                current_sort= ary[indice+1] + ary[indice]
                indice = indice + 2
            end
        
        @final_ary.push(current_sort)
        p @final_ary, "current"
        @ult_ary = current_sort
        end
        if @ult_ary.count == ary.count
            return @final_ary
            p @final_ary
        end
        
        p @ult_ary
        merge(@final_ary, 0)

    end

end

sorter = MergeSort.new
sorter.divide(['d','s','c','a'])    