def prime_fact(n, i)
  return i if n == 1
  if n%i == 0
    return prime_fact(n/i, i)
  else
    return prime_fact(n, i+1)
  end
end

puts prime_fact(600851475143, 2)



