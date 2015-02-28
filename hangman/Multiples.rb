
	def multiples
       sum = 0
       puts "Multiples of 3 and 5 are"
       for i in 1..1000
       	if i%3 == 0 and i%5 == 0
       		print "#{i} "
       		sum += i
       	end
       end
        puts ""
        puts "Sum of multiples is " + sum.to_s
    end

    multiples 
   

   
