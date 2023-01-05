def bubble_sort(array)
  ammount_of_loops = array.length
  i = 0
  sort_check = 0
  while i < ammount_of_loops && sort_check < ammount_of_loops
    i += 1
    array.each_with_index do |num, index|
      if (index + 1) < array.length && array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        sort_check = 0
      else
        sort_check += 1
        if sort_check == ammount_of_loops
          puts array
          return array
        end
      end
    end
  end
end

bubble_sort([4,3,78,2,0,2])
