def fibs(n)
  current_num = 0
  next_num = 1
  temp = 0
  while (n -= 1) > 0
    temp = next_num + current_num
    current_num = next_num
    next_num = temp
  end
  puts next_num
end


def fibs_rec(n)
  if n < 2
    n
  else
  fibs_rec(n-1) + fibs_rec(n-2)
  end
end
 t = fibs_rec(6)
puts t
