class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :session_token, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
