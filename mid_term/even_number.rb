class EvenNumber
  attr_accessor :value

	def initialize(value)
		@value = value
	end 
	
	def isEven
	def getNextEven
	  	if @value.odd?
  			new_val =EvenNumber.new(@value + 1)
  		else
  			new_val =EvenNumber.new(@value + 2)
  		end
  		new_val
  	end
  end

	def succ
		if @value.odd?
			new_val =EvenNumber.new(@value + 1)
		else
			new_val =EvenNumber.new(@value + 2)
		end
		new_val
	end

	def <=> (other)
		@value <=> other.value
	end
end
end
