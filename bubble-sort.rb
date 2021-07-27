def bubble_sort(array)

    len = array.length
  
    while len > 1
      for index in 1..len - 1 do
        if array[index - 1] > array[index]
          swap = array[index - 1]
          array[index - 1] = array[index]
          array[index] = swap
        end
      end
      len -= 1
    end
  
    return array
  end
  
  p bubble_sort([1, 5, 2, 0, 3, 6])
  p bubble_sort([2, 3, 2, 1, 10, 0, 12, -1, -5, 2])