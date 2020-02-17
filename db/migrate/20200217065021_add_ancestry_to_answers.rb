class AddAncestryToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :ancestry, :string
    add_index :answers, :ancestry
  end
end
