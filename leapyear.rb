def leapyearfinder(startingyear, endyear)
  while startingyear <= endyear
	if (startingyear%4 == 0 and startingyear%100 != 0) or startingyear%400 == 0
		puts startingyear
	end
	startingyear += 1 
  end
end

leapyearfinder(1900, 2000)