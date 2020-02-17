module QuestionsHelper
	def nested_answers(answers)
		if answers.kind_of?(Answer)
			content_tag(:div, render(answers), :class => "nested_answers answer.#{answers.id}").html_safe  		
		else
	  		answers.map do |answer, sub_answers|
	  			if sub_answers
	    			render(answer) + content_tag(:div, nested_answers(sub_answers), :class => "nested_answers answer.#{answer.id}")
	  			else
	  				render(answer)
	  			end
	  		end.join.html_safe
  		end
  	end
end
