class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer_text
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
