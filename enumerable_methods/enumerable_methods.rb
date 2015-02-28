module Enumerable

  def my_each
  	i = 0
  	return self unless block_given?
  	while i <= self.length-1
  		yield(self[i])
  		i += 1
  	end
    self
  end

  def my_each_with_index
  	i = 0
  	return self unless block_given?
  	while i <= self.length-1
  		yield(self[i], i)
  		i += 1
  	end
    self
  end


  def my_select
    b = []
    self.my_each do |x|
      if yield(x)
        b << x
      end
    end
    b
  end


end



