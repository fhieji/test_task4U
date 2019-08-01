class AddTicketsId < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :dashboard, foreign_key: true
  end
end
