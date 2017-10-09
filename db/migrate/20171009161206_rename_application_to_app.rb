class RenameApplicationToApp < ActiveRecord::Migration[5.1]
  def change
    rename_table :applications, :apps
    rename_column :responses, :application_id, :app_id
  end
end
