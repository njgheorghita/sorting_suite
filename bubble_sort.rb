class BubbleSort

	def sort(array)
		# high-level looping

		high_level_count = 0

			while high_level_count < array.length

				# low-level looping
				count = 0

					array.drop(1).each do |e|

						if e < array[count]
							array[count], array[count+1] = array[count+1], array[count]
							count+=1
						end

					end
				high_level_count+=1

			end			

		puts array
	end


end

sorter = BubbleSort.new

sorter.sort(['d','b','a','c'])


