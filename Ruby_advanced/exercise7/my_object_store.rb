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
   
    
    subclass.class_eval do
        def validate_presence_of *var

	    	var.each do |variable|
	    		variable="@".to_s+variable.to_s
	    		
	    		if self.instance_variable_get(variable) == nil 
		    		return false 
	    		else
	        		return true
				end		
			end     	
		end  
	end
	
	subclass.instance_eval do	
		dummyvariable=self.new()
		methodname=[]
         listofvariable=dummyvariable.instance_variables
		if listofvariable!=nil
        	listofvariable.each do |mname|
            	methodname<<"find_by_"+mname.to_s[1..-1]
            	
           	end	    
        end	
        methodname.each do |new_methods|
        
        	self.class.send(:define_method, new_methods) do |val|
        		 stored_result=[]
            	MyObjectStore.list.each do |stored_object|

            		if stored_object.class == subclass
            			variable=new_methods.split("_")[2]
              			if stored_object.instance_variable_get("@#{variable}").to_s == val
            				stored_result<<stored_object
            			    
                    	end
            		end	
                end

                if stored_result!=nil && self.instance_variable_get(:@result)!=nil
                	self.instance_variable_set(:@result,stored_result & self.instance_variable_get(:@result))
            	elsif self.instance_variable_get(:@result)==nil
            		self.instance_variable_set(:@result,stored_result)
            	end

            end          
        end	 
		def count
			puts "matchiong records"
            puts self.instance_variable_get(:@result)
		end	
	end
end

def save
	
	if self.class.instance_variable_get(:@validate_exist)
  	   puts
  	   if self.validate
   		   MyObjectStore.list.push(self)
   		   puts "#{self} has been added"
   		else
   			puts "validator exists but it has failed"
		end
	else
		 MyObjectStore.list.push(self)
		 puts "#{self} has been added"
	end	 	  
end


end
