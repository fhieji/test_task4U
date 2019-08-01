class RecreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :user,index: true, foreign_key: true
      t.references :dashboard,index: true, foreign_key: true

      t.timestamps
    end
  end
end
