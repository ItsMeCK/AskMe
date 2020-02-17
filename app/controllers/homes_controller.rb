class HomesController < ApplicationController
	def index
		@all_questions = Question.get_all_quetions
	 	@my_quetions = current_user.questions
	end
end
