module QuestionsHelper
	def nested_answers(answers)
  		answers.map do |answer, sub_answers|
  			if sub_answers
    			render(answer) + content_tag(:div, nested_answers(sub_answers), :class => "nested_answers")
  			else
  				render(answer)
  			end
  		end.join.html_safe
  	end
end
