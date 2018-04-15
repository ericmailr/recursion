def merge_sort(arr)
	size = arr.size
	
	if size == 1 then return arr end

	left = merge_sort(arr[0..size/2-1])
	right = merge_sort(arr[size/2..size-1])

	mergedArr = []; i = 0; j = 0;
	loop  do
		if left[i] < right[j] then
			mergedArr << left[i]
			if i < left.size-1 then 
				i+=1
			else 
				mergedArr << right[j..-1] 
				break
			end
		else
			mergedArr << right[j]
			if j < right.size-1 then 
				j+=1
			else 
				mergedArr << left[i..-1]
				break
			end
		end
	end
		return mergedArr.flatten

end

p merge_sort([4,3,1,7,8,2,9,3,6,1,4])


