module MyObjectStore
class << self
	attr_reader :list
end
@list=[]
def self.included(subclass)

	def subclass.method_added(name)
		if (name.to_sym == :validate)
			self.instance_variable_set(:@validate_exist,true)
        end
	end
    dummyvariable=subclass.new()
    self.instance_variable_set(:@listofvariable,dummyvariable.instance_variables)

    class << subclass
        def validate_presence_of *var
	    	var.each do |variable|
	    		if variable == nil 
		    		return false 
	    		else
	        		return true
				end		
			end     	
		end
        subclass.listofvariable.each do |methodname|
            methodname="find_by_"+methodname
            array_of_result="result_"+methodname
            sublass.instance_variable_set(:@validate_exist,true)
            define_method self.methodname do |val|
            	MyObjectStore.list.each do |stored_object|
            		if stored_object.class == subclass


            		end	
            	end	
            end   
        end	
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
