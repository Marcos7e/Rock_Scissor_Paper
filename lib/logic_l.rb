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

 def select_robot
     @select_robot
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
		evalJuego(option.to_i, robotSelect())
		robotselect="Ud selecciono: "+@select_human+" El robot seleccino: "+select_robot+"\n Jugador: "+ getScoreHuman.to_s+" Computadora: "+ getScoreRobot.to_s
		

	end

	def robotSelect 
		@random = rand(0..2)
		case @random
		when  0
			@select_robot ="piedra".upcase
			return 0
		when  1
			@select_robot = "papel".upcase
			return 1
		when  2
			@select_robot = "tijera".upcase
			return 2
		end
	end


	def scoreHuman
		@score_human += 1
	end

	def scoreRobot
		@score_robot += 1
	end
	
	def getScoreRobot
		@score_robot
	end

	def getScoreHuman
		@score_human
	end

	def resetScore
		@score_human = 0
		@score_robot = 0
	end
	
	def evalJuego jugador, computadora

		if jugador == computadora
			return			
		else if jugador == 2 
			if computadora ==0
			scoreRobot
			else
			scoreHuman
			end			
		else
			if jugador>computadora
			scoreHuman
			else
			scoreRobot
			end			
		end
	end
	

	

end

end
