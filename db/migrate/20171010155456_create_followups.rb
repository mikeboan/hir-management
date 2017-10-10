class CreateFollowups < ActiveRecord::Migration[5.1]
  def change
    create_table :followups do |t|
      t.integer :interview_id, null: false
      t.string :question
    end

    add_index :followups, :interview_id
  end
end
