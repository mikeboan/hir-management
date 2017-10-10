class CreateRubricItems < ActiveRecord::Migration[5.1]
  def change
    create_table :rubric_items do |t|
      t.integer :rubric_id, null: false
      t.integer :type, null: false
      t.integer :score, null: false

      t.timestamps
    end

    add_index :rubric_items, :rubric_id
  end
end
