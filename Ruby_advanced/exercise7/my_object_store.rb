module MyObjectStore
class << self
	attr_reader :list
end
@list=[]
def self.included(subclass)
	puts "included"
	def subclass.method_added(name)
		if (name.to_sym == :validate)
			self.instance_variable_set(:@validate_exist,true)
        end
	end
    x=subclass.new
 	puts x.instance_variables
	puts subclass.instance_variables

	
end
def validate_presence_of var
	if :var == nil 
		return false
	else
	     return true
	end     	
end
def save
	
	if self.class.instance_variable_get(:@validate_exist)
  	   
  	   if self.validate
   		   MyObjectStore.list.push(self)
   		else
   			puts "validator exists but it has failed"
		end
	else
		 MyObjectStore.list.push(self)
		 puts "#{self} has been added"
	end	 	  
end


end
