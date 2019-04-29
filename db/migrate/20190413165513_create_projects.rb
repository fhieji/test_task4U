class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string	:title
      t.string	:sub_title
      t.string	:image
      t.string 	:client
      t.string 	:period
      t.string	:place
      t.string	:service_name
      t.date	:press_date
      t.timestamps
    end
  end
end
