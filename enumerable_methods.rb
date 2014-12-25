module Enumerable
  
  def my_each
  	i = 0
  	return self unless block_given?
  	while i <= self.length-1
  		yield(self[i])
  		i += 1
  	end
  end
  def my_each_with_index
  	i = 0
  	return self unless block_given?
  	while i <= self.length-1
  		yeild(self[i], i)
  		i += 1
  	end
  end

 		
end



