class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :users, foreign_key: true
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
