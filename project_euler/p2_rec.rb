def fib_sum(first, second)
  return 0 if second >= 40
  next_term = first + second
  if next_term.even?
    result = fib_sum(second, next_term) + next_term
  else
    result = fib_sum(second, next_term)
  end
  result
end

t = fib_sum(1, 1)
puts t.inspect
