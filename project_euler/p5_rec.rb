def smallest_div_no(n, i)
  return i if n == 1
  if i%n == 0
    smallest_div_no(n-1, i)
  else
    n = 10
    i += (n - (i/n))
    smallest_div_no(n, i)
  end
end

puts smallest_div_no(10, 11)
