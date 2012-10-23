require_relative 'my_module'
class Test
  extend MyModule
	def initialize

	end
	def foo
		puts "foo"
	end
	def byee
      puts "bye"
	end	
	def tata
		puts "sainora"
	end	
	def say
	   puts "say"
	end   
    

    before_filter :foo
    after_filter :byee
    before_filter :tata,:only=>[:say]
end
