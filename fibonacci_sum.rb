def fibbonacci_sum
  x = 1
  y = 2
  sum = 2
  loop do
	z = x + y
	sum += z if z.even?
	x = y
	y = z
    break if z >= 4000000
  end
    puts "The sum is #{sum}"
end

fibbonacci_sum