class RenameServiceNameColumnToProjects < ActiveRecord::Migration[5.2]
  def change
  	rename_column :projects, :service_name, :service
  end
end
