class AddColumnsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :reference, :text
  end
end
