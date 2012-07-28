module MyModule
	
   def before_filter *var
   	result ||=Array.new
   	result=result.concat(var)
    list_of_methods=instance_methods - Object.methods
    
     var.each do |method|
       
        if(method.to_s).index("only")
           list_of_methods=[method.to_s.split("[:")[1].split("]")[0]]
          var.pop
        end 
        if(method.to_s).index("except")
           a= method.to_s.split("[:")[1].split("]")[0]
           list_of_methods.delete(a.to_sym)
           
          var.pop
        end 
     end
   	
  
      list_of_methods.each do |name|
          m = instance_method(name)
           define_method(name) do |*args, &block|  
              var.each do |method|
                  if result!=nil
											if result.index(name) == nil
                 	   				send(method)
                 	   	end
                 	else
                    	send(method)	 
                   end
              end 
               m.bind(self).(*args, &block)
          end
      end	 
    end
  def after_filter *var

 			result ||=Array.new
   	  result=result.concat(var)
     	list_of_methods=instance_methods - Object.methods
        var.each do |method|
        
        if(method.to_s).index("only")
           list_of_methods=[method.to_s.split("[:")[1].split("]")[0]]
          var.pop
        end 
        if(method.to_s).index("except")
           a= method.to_s.split("[:")[1].split("]")[0]
           list_of_methods.delete(a.to_sym)
           var.pop
        end 
     end
      list_of_methods.each do |name|
           m = instance_method(name)
                  
            define_method(name) do |*args, &block|  
                 m.bind(self).(*args, &block)
                var.each do |method|
                 
                 	 if result!=nil
											if result.index(name) == nil
                 	   				send(method)
                 	   	end
                 	 else
                    	send(method) 
                   end
                end 
              
            end
      end	 
  end
end
