require './Dinner.rb'

class ThanksgivingDinner < Dinner
  attr_accessor :guests
  def initialize(style)
    @style = style
  end 
end