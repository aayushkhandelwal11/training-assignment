class Name
	def initialize(first,lastname)
	  if first==nil || lastname==nil
	    raise 'name cannot be empty'
	  elsif (first[0] =~ /[A-Z]/) == nil
	    raise 'First letter of first name should be capital'
	  else
	    @first=first
	    @lastname=lastname
	  end    
	end
	def to_s
	  "welcome MR/Miss #{@first}  #{@lastname}"
	end
end
