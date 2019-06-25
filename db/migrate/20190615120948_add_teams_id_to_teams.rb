class AddTeamsIdToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :Teams_id, :string
  end
end
