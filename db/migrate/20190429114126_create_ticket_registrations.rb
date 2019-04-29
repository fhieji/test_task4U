class CreateTicketRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_registrations do |t|
    	t.string :category
    	t.string :title
    	t.text :comment_descriptive
    	t.string :comment_summary
    	t.string :status
    	t.string :PIC
    	t.string :related_ticket
    	t.date :start_date
    	t.date :due_date
    	t.integer :estimated_man_hour
    	t.float :progress_rate
    	t.string :watcher
      t.timestamps
    end
  end
end
