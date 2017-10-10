class AddIndices < ActiveRecord::Migration[5.1]
  def change
    add_index :apps, :email, unique: true

    add_index :responses, :question_id
    add_index :responses, :app_id

    add_index :admins, :email, unique: true
    add_index :admins, :session_token, unique: true
  end
end
