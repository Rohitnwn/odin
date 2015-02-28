def palindrome(x, y)

  if (x*y).to_s == (x*y).to_s.reverse
     puts "The largest 3-digit palindrome is #{x*y}"
     exit
  else
    palindrome(x, y-1)
  end
end

palindrome(999, 999)
