module StudioGame
module Playable
def strong?
  self.health > 60 
end
def woo
  self.health+=10
end

def blam
  self.health-=10

end
end
end
