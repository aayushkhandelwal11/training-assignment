def fibo(limit)
     a = 0
     b = 1
     while (a < limit)
         yield a
         t = a
         a = a + b
         b = t
     end
end 
fibo(1000) {|x| print "Fibonacci number: #{x}\n"}

