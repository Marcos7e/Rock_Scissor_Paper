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

	def robotSelect 
		@random = rand(0..2)
		case @random
		when  0
			@select_robot ="piedra".uppercase
		when  1
			@select_human = "papel".uppercase
		when  2
			@select_human = "tijera".uppercase
	end
	
end
