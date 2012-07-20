class Array
  def to_hash
    @hash =Hash.new(Array.new())

      for item in self
            @hash[item.to_s.length]+=[item]
                  
      end
      puts @hash
      
  end
end
