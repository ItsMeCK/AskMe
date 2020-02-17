class Answer < ApplicationRecord
	belongs_to :user
	belongs_to :question, optional: true
	has_many :comments, class_name: "Answer",
                          foreign_key: "comment_id"

    belongs_to :answer, class_name: "Answer", optional: true, foreign_key: "comment_id"
	has_ancestry

	validates :answer_text, :user_id, presence: true
end
