require_relative 'my_module'
class Test
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
    extend MyModule

    before_filter :foo,:only=>[:tata]
    after_filter :byee,:except=>[:foo]
end
