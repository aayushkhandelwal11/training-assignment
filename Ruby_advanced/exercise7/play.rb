require_relative 'my_object_store'
class Play 
 include MyObjectStore
attr_accessor :age ,:fname, :email 
validate_presence_of :fname, :email
def initialize(age,fname,email)
	@age=age.to_i
	@fname=fname
	@email=email
end


def validate
	true
end 
end
