def swap(array, pos_a, pos_b)
  temp = array[pos_a]
  array[pos_a] = array[pos_b]
  array[pos_b] = temp

  array
end

def bubble_sort(array)
  (0...array.length).each do |i|
    sorted = false
    (0...array.length-i-1).each do |j|
      if array[j] > array[j+1]
        array = swap(array, j , j+1)
        sorted = true
      end
    end
    break unless sorted
  end
end

array = [5, 2, 8, 1, 3]

bubble_sort(array)

puts array
