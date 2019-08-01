class RenameTeamsColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :users_id, :user_id
  end
end
