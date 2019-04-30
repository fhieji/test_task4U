class CreateUserRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_registrations do |t|
    	t.integer :user_id
    	t.string :surname
    	t.string :firstname
    	t.string :email_address
    	t.date :registrartion_date
    	t.integer :administraton_flag
    	t.integer :delete_flag
      t.timestamps
    end
  end
end