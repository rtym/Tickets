class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :reporter, :null => false
      t.string :email, :null => false
      t.string :number, :null => false
      t.integer :ticket_status_id, :null => false
      t.integer :user_id

      t.timestamps
    end

    add_index :tickets, :ticket_status_id
    add_index :tickets, :user_id
  end
end
