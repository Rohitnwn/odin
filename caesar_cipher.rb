def caesar_cipher(str, n)
	new_word = ""
	str.each_char do |i|
		n.times do
			if i == "z"
				i = "a"
				next
			elsif i == "Z"
				i = "A"
				next
			end
			i.next!
			i == "%" ? i = " " : ""
		end
		new_word +=i
	end
	puts new_word
end 


caesar_cipher("what is string", 4)




