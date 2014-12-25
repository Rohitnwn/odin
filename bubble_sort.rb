def bubble_sort(arr)
  size = arr.length
  loop do
      swap = 0
      for i in 0..size-2
	    if arr[i + 1] < arr[i]
	      swap += 1 
		  arr[i], arr[i + 1] = arr[i + 1],arr[i]
	    end
	  end
    size -= 1
    break if swap == 0
  end
  puts arr.inspect
end

bubble_sort([5,3,7,8,1,2])