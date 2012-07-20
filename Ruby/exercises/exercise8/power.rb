class Power
  def initialize(arr) 
    @array=arr
  end
  def pow(number)
   @array.each_with_index.map { |x| x **number }   
  end
end  
