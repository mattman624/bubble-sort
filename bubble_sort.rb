def bubble_sort array
	new_array = array
	not_sorted = true
	index = 0

	while not_sorted
		not_sorted = false

		(new_array.length-index - 1).times do |i|
			if new_array[i] > new_array[i+1]
				new_array[i], new_array[i+1] = new_array[i+1], new_array[i]
				not_sorted = true
			end
		end
		index += 1
	end
	new_array
end

def bubble_sort_by(array, &block)
	new_array = array
	not_sorted = true
	index = 0

	while not_sorted
		not_sorted = false

		(new_array.length-index - 1).times do |i|
			if block.call(new_array[i], new_array[i+1]) > 0
				new_array[i], new_array[i+1] = new_array[i+1], new_array[i]
				not_sorted = true
			end
		end
		index += 1
	end
	new_array

end