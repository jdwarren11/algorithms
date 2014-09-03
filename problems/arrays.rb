require 'rubygems'
require 'pry-byebug'

module ArrayUtil
  def self.max(array)
    if array.size == 0
      return nil
    end
    max = array.first
    array.each do |x| 
      if x > max
        max = x
      end
    end
    max
  end

  def self.middle_element(array)
    if array.nil?
      nil
    elsif array.count == 1
      array.first
    elsif array.count.odd? && array.count > 1
      num = array.count / 2
      array[num.ceil]
    elsif array.count.even? && array.count > 1
      num1 = array.count / 2
      num2 = array.count / 2 - 1
      (array[num1].to_i + array[num2].to_i) / 2.0
    end
  end

  def self.sum_arrays(array1, array2)
    new_array = []
    if array1.empty? && array2.empty?
      return []
    else
      array1.each_index do |x|
        new_array << (array1[x] + array2[x])
      end
    end  
    new_array
  end
end
