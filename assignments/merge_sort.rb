def merge(left, right)
  result = []
  until left.empty? || right.empty? do
    result << (left[0] < right[0] ? left.shift : right.shift)
  end
  return result.concat right, left
end

def merge_sort(arr)
  if arr.length === 1
    arr
  else
    left = merge_sort(arr.shift(arr.length / 2))
    right = merge_sort(arr);
    merge(left, right);
  end
end

p merge_sort([1,5,2,3,6,4,20,123,33,-2,12,-123])