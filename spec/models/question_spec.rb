require 'rails_helper'

RSpec.describe Question, type: :model do

  context 'on save ' do  # (almost) plain English
    it 'cannot have blank question' do   #
      expect { Question.create!(user_id: 1) }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end

    it 'cannot have blank user' do   #
      expect { Question.create!(question: 'Test') }.to raise_error(ActiveRecord::RecordInvalid)  # test code
    end
  end
end
