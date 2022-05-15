# frozen_string_literal: true

def bubble_sort(array, sorted=false)
  return array if sorted == true

  sorted = true
  array.each_with_index do |val, i|
    next if i.zero? || array[i] >= array[i - 1]

    previous = array[i - 1]
    now = array[i]
    array[i - 1] = now
    array[i] = previous
    sorted = false
  end
  bubble_sort(array, sorted)
end

p bubble_sort([4,3,78,2,0,2])
