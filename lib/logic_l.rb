class Logic

	def initialize
	@score_human = 0
	@score_robot = 0
	@select_human = ''
	@select_robot = ''
	end

	def userSelect option
	
	case option.to_i
		when 0
			@select_human = "piedra".uppercase	
		when 1
			@select_human = "papel".uppercase	
		when 2
			@select_human = "tijera".uppercase		

	end

end
