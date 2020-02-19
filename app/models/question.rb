class Question < ApplicationRecord
	belongs_to :user
	has_many :answers
	
	validates :question, presence: true
	after_commit :flush_cache!
	
	def self.get_all_quetions
		Rails.cache.fetch('all_questions') { puts 'evaluating...' ; all }
	end

	def flush_cache!
		puts 'flushing the cache...'
    	Rails.cache.delete 'all_questions'
	end

	def self.search(search)
	  if search
	    self.where("question like ?", "%#{search}%")
	  else
	    self.all
	  end
	end

end
