require_relative 'my_object_store'
class Play 

attr_accessor :age ,:fname, :email 

def initialize(age=0,fname=nil,email=nil)
	@age=age.to_i
	@fname=fname
	@email=email
    
end
include MyObjectStore
def to_s 
  "#{@fname} of #{@age} with email id #{@email}"
end	

def validate
	validate_presence_of :fname,:email
end 
end
