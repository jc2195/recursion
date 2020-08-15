require 'pry'

def merge_sort(array)
  how_long = array.length
  merged_array = []
  left_length = 0
  right_length = 0
  if how_long < 2
    merged_array = array
  else
    if how_long.even?
      left_length = how_long / 2
      right_length = how_long / 2
    else
      left_length = (how_long + 1) / 2
      right_length = (how_long - 1) / 2
    end
    left_array = merge_sort(array[0..left_length - 1])
    right_array = merge_sort(array[-right_length..-1])
    left_counter = 0
    right_counter = 0
    until merged_array.length == left_length + right_length
      if left_counter == left_length
        merged_array.push(right_array[right_counter])
        right_counter += 1
      elsif right_counter == right_length
        merged_array.push(left_array[left_counter])
        left_counter += 1
      elsif left_array[left_counter] < right_array[right_counter]
        merged_array.push(left_array[left_counter])
        left_counter += 1
      else
        merged_array.push(right_array[right_counter])
        right_counter += 1
      end
    end
  end
  merged_array
end

array = [57, 1961, 69, 420, 69, 69, 69, 1, 0]
print merge_sort(array)
