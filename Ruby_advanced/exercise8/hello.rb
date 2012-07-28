require_relative 'my_module'
class Hello
	extend MyModule
	def greet
		p "hellos hw r"
	end	
	def put?
		p "putting"
	end	
	chained_aliasing :greet,:put?

end
