def merge(left, right)
  result = []
  while !left.empty? && !right.empty? do
    if (left[0] < right[0])
      result << left.shift
    else
      result << right.shift
    end
  end

  !left.empty? ? result + left : result + right

  result
end

def merge_sort(arr)
  if arr.length() === 1
    return arr
  else
    split_point = arr.length() / 2
    left = merge_sort(arr[0..split_point - 1])
    right = merge_sort(arr[split_point..-1])
    return merge(left, right);
  end
end

p merge_sort([1,5,2,3,6,4])