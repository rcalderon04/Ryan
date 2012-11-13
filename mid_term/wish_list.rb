class WishList
  include Enumerable
  attr_accessor :wishes

  def each
   i=1
   @wishes.each do |w|
     out = "#{i}"+ ". " + w
     yield(out)
     i += 1
   end
  end  
end