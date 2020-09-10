def merge_sort(arr)
  if arr.length == 1
    arr
  else
    left, right = merge_sort(arr[0...arr.length/2]), merge_sort(arr[arr.length/2..-1])
    merge(left, right)
  end
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result.push((left[0] < right[0]) ? left.shift : right.shift)
  end
  result += (left.empty?) ? right : left
  result
end