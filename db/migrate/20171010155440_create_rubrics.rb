class CreateRubrics < ActiveRecord::Migration[5.1]
  def change
    create_table :rubrics do |t|
      t.integer :interview_id, null: false
      t.integer :type

      t.timestamps
    end

    add_index :rubrics, :interview_id
  end
end
