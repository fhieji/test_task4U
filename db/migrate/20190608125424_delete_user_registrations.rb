class DeleteUserRegistrations < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_registrations
  end
end
