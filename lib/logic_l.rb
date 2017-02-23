class Logic

	def initialize
		@score_human = 0
		@score_robot = 0
		@select_human = ""
		@select_robot = ""
	end

  def select_human
     @select_human
  end

	def userSelect option
		case option.to_i
		when 0
			@select_human = "piedra".upcase	
		when 1
			@select_human = "papel".upcase	
		when 2
		         @select_human = "tijera".upcase	
		end	
		robotselect = robotSelect()
		robotselect="Ud selecciono: "+@select_human+" El robot seleccino: "+robotselect

	end

	def robotSelect 
		@random = rand(0..2)
		case @random
		when  0
			@select_robot ="piedra".upcase
		when  1
			@select_human = "papel".upcase
		when  2
			@select_human = "tijera".upcase
	end
	end
	

	

end
