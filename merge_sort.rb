def merge_sort(arr)
  n = arr.length
  mid = n/2
  return arr if n == 1
  a = arr.slice!(0..mid-1)
  b = arr
  a = merge_sort(a)
  b = merge_sort(b)
  merge(a, b)
end

def merge(a, b)
  merged = []
  i,j = 0, 0
  while i < a.length and j < b.length
    if a[i] <= b[j]
      merged << a[i]
      i += 1
    else
      merged << b[j]
      j += 1
    end
  end
  merged.concat a[i..-1]
  merged.concat b[j..-1]
  merged
end

t = merge_sort [3, 7, 8, 1, 4, 9]
puts t.inspect
