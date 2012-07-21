class Intrest
  def initialize(p,t) 
     @p=p
     @t=t
     @r=0.10
  end
  def differ
     @p*((1+@r)**@t-1-@r*@t)
   end
end
