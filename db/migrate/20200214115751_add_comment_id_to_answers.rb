class AddCommentIdToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :comment_id, :integer
  end
end
