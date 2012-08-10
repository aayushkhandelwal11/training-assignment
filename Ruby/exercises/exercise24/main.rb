class Array
	def reverse_iterate
	  i=self.length
	  
		begin
    		 i=i-1
     	 yield self[i]   
    end while i >0
	end
end
[2,4,6,8].reverse_iterate { |i| print "#{i} "}
