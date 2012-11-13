require './Dinner.rb'

class ThanksgivingDinner < Dinner
  attr_accessor :guests, :menu, :diet
  def initialize(diet)
    @diet = diet
    @menu = {:diet => @diet, :proteins => ["Tofurkey", "Hummus"], :veggies => [:ginger_carrots, :potatoes, :yams], :desserts => {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}}
  end 

  def seating_chart_size
    @guests.inject(0) {|sum,guest| sum + guest.length}
  end
  
  def whats_for_dinner
    proteins = @menu[:proteins]
    veg = @menu[:veggies]
    ginger = undoUnderscore(veg[0])
    pot = veg[1].to_s.capitalize
    yam = veg[2].to_s.capitalize
    "Tonight we have proteins #{proteins[0]} and #{proteins[1]}, and veggies #{ginger[0]} #{ginger[1]}, #{pot}, and #{yam}."
  end
  
  def whats_for_dessert
    totalMolds = 0
    capMolds = []
    @menu[:desserts][:molds].each do |mold|
      capMolds << mold.to_s.capitalize
      totalMolds += 1
    end
    #moldCount = @menu[:desserts][:molds].length
    totalDesserts = @menu[:desserts].values.flatten.length
    pumkin = @menu[:desserts][:pies]
    pumkin = undoUnderscore(pumkin[0])
    "Tonight we have #{totalDesserts} delicious desserts: #{pumkin[0]} #{pumkin[1]}, #{@menu[:desserts][:other]}, and #{totalMolds} molds: #{capMolds[0]} and #{capMolds[1]} and #{capMolds[2]}."
  end
  
  private 
    def undoUnderscore(symbolWithUnderscore)
      split = symbolWithUnderscore.to_s.split('_')
      split.each {|element| element.capitalize!}
    end
end