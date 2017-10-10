class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.integer :app_id, null: false
      t.text :sanity_question
      t.text :job_search_question
      t.text :manager_notes
      t.text :interviewee_notes

      t.timestamps
    end

    add_index :interviews, :app_id
  end
end
