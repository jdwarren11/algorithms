module Set1
  def self.swap_small(array)
    small_index = 0
    small_element = array.first
    
    for i in 0...array.length
      if small_element > array[i]
        small_element = array[i]
        small_index = i
      end
    end

    array[small_index] = array[0]
    array[0] = small_element
    array
  end

  def self.find_sum_2(array, sum = 0)
    for i in 0...array.length
      for j in i...array.length
        if array[i] + array[j] == sum
          return true
        end
      end
    end

    false
  end

  def self.find_sum_3(array)
    for i in 0...array.length
      if find_sum_2(array, -1 * array[i])
        return true
      end
    end

    false
  end
end
