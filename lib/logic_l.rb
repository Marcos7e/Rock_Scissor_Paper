class Logic
   def initialize
	@score_human = 0
	@score_robot = 0
	@select_human = ""  
	@select_robot = ""
	@ronda=0
	@ganador = ""
  end

  def select_human
     @select_human
  end

  def select_robot
     @select_robot
  end

  def ronda
     @ronda
  end

  def winner
     @ganador
  end

  def definirGanador sHuman, sRobot
 	if(sHuman > sRobot)
		@ganador = "Jugador!"
	elsif(sHuman < sRobot)	
		@ganador = "Computadora ! (buuuuu!)"
	else
		@ganador = "Empate!"	
	end	
  end

	def ganador scoreActual, scoreActualPC
		if getScoreHuman>scoreActual	
				"Ganador: Player!"
		elsif getScoreRobot==scoreActualPC	
				"Empate!!!!"
		else
				"Ganador: Computadora!"	
		end			
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
		scoreActual=getScoreHuman
		scoreActualPC=getScoreRobot
		evalJuego(option.to_i, robotSelect())
		robotselect="<h3>En esta ronda:</h3>Ud. seleccionó: "+@select_human+"<br>El robot seleccionó: "+select_robot+"<br><h4>"+ganador(scoreActual, scoreActualPC)+"</h4>"
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
		@ronda=0
	end
	
	def evalJuego jugador, computadora
		@ronda+=1
		if ronda == 10
			definirGanador jugador.to_i, computadora.to_i	
			resetScore	
		end
		if jugador == computadora
			return			
		else if jugador == 2 
			if computadora ==0
			scoreRobot
			else
			scoreHuman
			end	
		elsif computadora == 2 
			if jugador ==0
			scoreHuman
			else
			scoreRobot
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
