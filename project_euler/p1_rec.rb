def multiples(n)
  return [] if n < 3

  if n%3 == 0 or n%5 == 0
    result = multiples(n-1) << n
  else
    result = multiples(n-1)
  end
  result
end

