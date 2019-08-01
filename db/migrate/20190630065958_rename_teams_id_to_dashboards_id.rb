class RenameTeamsIdToDashboardsId < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :Teams_id, :dashboards_id
  end
end
