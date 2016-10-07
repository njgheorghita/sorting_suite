#sorter = InsertionSort.new
#=> #<InsertionSort:0x007f81a19e94e8>
#sorter.sort(["d", "b", "a", "c"])
#=> ["a", "b", "c", "d"]
require 'pry'

class InsertionSort

	def sort(unsorted)

		#create initial sorted array
		sorted = []
		sorted << unsorted.shift

		# keeps the whole thing from breaking (infinite loop)
		# knows when unsorted is empty
		while unsorted.length > 0
			
			# grabs first unsorted element
			current = unsorted.shift
			# compares it to sorted elements
			# and inserts before a larger element
			sorted.each_with_index { |item, index|
				# checks to see if larger element exists in sorted
				if  item > current
					sorted.insert(index, current)
					break
				end
				# if no larger element in sorted 
				# pushes current to end of sorted
				if (index + 1) == sorted.length
					sorted.push(current)
					break
				end
			}
			
		end
	
		p sorted

	end

end

sorter = InsertionSort.new
sorter.sort(['d','b','q','z','e','a','a','c'])