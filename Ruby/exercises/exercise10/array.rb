class Array
  def to_hash
    @hash =Hash.new(Array.new())

    for item in self
      @hash[item.to_s.length]+=[item]
    end
    puts @hash
    result =   @hash.inject({}) do |grouped, (k,v)|
      r = k % 2 == 1 ? 'odd' : 'even'
      grouped[r] = [] if grouped[r].nil?
      grouped[r] << v
      grouped
    end 
    puts result         
  end
end
