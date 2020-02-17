require 'rails_helper'

RSpec.describe Answer, type: :model do
	context 'on save ' do  # (almost) plain English
	    it 'cannot have blank Answer' do   #
	      expect { Answer.create!(user_id: 1, question_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)  # test code
	    end

	    it 'cannot have blank user' do   #
	      expect { Answer.create!(answer_text: 'Answer', question_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)  # test code
	    end
  end
end
