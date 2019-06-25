class RemoveTicket < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :ticket_id, :integer
  end
end
