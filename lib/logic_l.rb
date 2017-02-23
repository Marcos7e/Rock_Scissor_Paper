class Logic

	def initialize
	@score_human = 0
	@score_robot = 0
	@select_human = ''
	@select_robot = ''
	end

	def userSelect option
	
	case option
		when 'piedra'
			@select_human = "piedra".uppercase	
		when 'papel'
			@select_human = "papel".uppercase	
		when 'tijera'
			@select_human = "tijera".uppercase		

	end

end
