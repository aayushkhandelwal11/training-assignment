class Intrest
  attr_accessor :p,:t

  def initialize(init)
    init.each_pair do |key, val|
      instance_variable_set('@' + key.to_s, val)
    end
    @r=0.10
  end
	def compound_intrest
			@p*((1+@r)**@t-1)#formula for intrest compounded
	end
	def simple_intrest
			@p*@r*@t#formula for intrest simple
	end
  def differ
    puts self.compound_intrest-self.simple_intrest
    
  end

end

