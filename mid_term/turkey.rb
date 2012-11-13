require './Animal.rb'
class Turkey < Animal

  def initialize(myTurkey)
    @turkey = myTurkey
  end
  
  def weight
    @turkey
  end
  
  def gobble_speak(speak)
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