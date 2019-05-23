class CreateTicketWatchers < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_watchers do |t|
 			t.references  :user,  index: true, foreign_key: true
      t.references  :ticket, index: true, foreign_key: true
      t.timestamps
    end
  end
end
