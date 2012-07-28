module MyModule
   def chained_aliasing *var
      self.class_eval do 
      		var.each do |meth|
      			   m=self.new
      			   list= m.private_methods-Object.methods
      			   if list.include?(meth)
                      private 
                   end   
      			   if  meth.to_s.include?"?"
      			    k=meth.to_s.chomp('?').to_sym
      			    old="#{k}_without_logging?"
      			    newmeth="#{k}_with_logging?"
      			 else    
      			 
      			 	old="#{meth}_without_logging"
      			    newmeth="#{meth}_with_logging"
      			 end   
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
