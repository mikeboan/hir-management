class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :question_id, null: false
      t.integer :application_id, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
