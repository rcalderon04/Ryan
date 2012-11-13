class WishList
  include Enumerable
  attr_accessor :wishes
#  def initialize
#    @wish = []
#  end

#  def wishes(*wish)
#    @wish = wish
#  end
#  def wishes(wish)
#    @wish = wish
#  end
  
  def each
    @wish.each {|w| yield(w)}
  end
  
  def map
    i = 0
    each do |e|
      out = yield(e, i)
      i += 1
      out
    end
  end
    
end