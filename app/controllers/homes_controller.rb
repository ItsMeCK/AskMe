class HomesController < ApplicationController
	def index
		@all_questions = Question.search(params[:search])
	 	@my_quetions = current_user ? current_user.questions : []
	end
end
