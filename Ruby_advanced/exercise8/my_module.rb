module MyModule
   def chained_aliasing *var
      self.class_eval do 
      		var.each do |meth|
      		     func=meth
      			   m=self.new
      			   list= m.private_methods-Object.methods
      			   if list.include?(meth)
                      private 
              end   
              sign=""
             	if  meth.to_s.include?"!"
      			   		sign="!"
      			   		func= meth.to_s.chop!.to_sym     
      			   	elsif  meth.to_s.include?"?" 
      			   	 sign="?"
      			   	 func= meth.to_s.chop!.to_sym 
      			   	
             	end   
                old="#{func}_without_logging"+sign
      			      newmeth="#{func}_with_logging"+sign
      	          alias_method old, meth
                define_method meth do |*args|
                  	puts "--loging start"
                	  res = send old, *args
                	  puts "--loging end"
                end
            	alias_method newmeth, meth 
      	end
     end   
    end
end    
