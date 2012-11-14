require './Animal.rb'
class Turkey < Animal
  attr_accessor :weight
  def initialize(turkeyWeight)
    @weight = turkeyWeight
  end
  
  def gobble_speak(speak)
    speakOutput = ""
    splitSpeak = speak.split('.')
    first = splitSpeak[0].split(' ')
    second = splitSpeak[1].split(' ')
    first.each do |word|
      if (word[0].chr == word[0].chr.upcase)
        speakOutput << "Gooble "
      else
        speakOutput << "gooble "
      end
    end
    speakOutput.chomp
    speakOutput <<  "."
    speakOutput
    second.each do |word|
      if ()
      end
    end
 #   splitSpeak = speak.split('.')
#    first = splitSpeak[0].split(' ')
#    second = splitSpeak[1].split(' ')
#    speakOutput = ""
#    for (i=0, i<first.length, i++)
#      if (first[i].chr == first[i].chr.upcase)
#        speakOutput << "Gobble "
#      else
#        speakOutput << "gobble "
#      end
#    end
#    speakOutput.chomp
#    puts (".")
#    for (i=0, i<second.length, i++)
#      speakOutput << "Gooble"
#    end
  end
  
end