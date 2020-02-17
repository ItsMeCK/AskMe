class Question < ApplicationRecord
	belongs_to :user
	has_many :answers
	def self.get_all_quetions
		all
	end
end
