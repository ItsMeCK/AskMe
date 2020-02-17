class Question < ApplicationRecord
	belongs_to :user
	has_many :answers
	
	validates :question, presence: true
	
	def self.get_all_quetions
		all
	end
end
