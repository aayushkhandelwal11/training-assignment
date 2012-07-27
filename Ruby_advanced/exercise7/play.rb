require_relative 'my_object_store'
class Play 

attr_accessor :age ,:fname, :email 

def initialize(age=1,fname="ax",email="ax")
	@age=age.to_i
	@fname=fname
	@email=email
end
include MyObjectStore
validate_presence_of :fname,:email

def validate
	false
end 
end
