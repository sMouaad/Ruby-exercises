# frozen_string_literal: true

def bubble_sort(array)
  (0..array.length - 2).each do |i|
    (0..array.length - i - 2).each do |j|
      next unless array[j] > array[j + 1]

      temp = array[j]
      array[j] = array[j + 1]
      array[j + 1] = temp
    end
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
