require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do
  before do
    @evenNumber = EvenNumber.new
  end
  
  it "should only allow even numbers" do
    @evenNumber.isEven(5)should == False
  end
  
  it "should get the next even number" do
    @evenNumber.getNextEven(5).should == 6
  end
  
  it "should compare even numbers" do
    @evenNumber.compare(5,4).should == False
  end
  
  it "should generate a range of even numbers" do
    @evenNumber.getRange(2,8).should == [2,4,6,8]
  end
end