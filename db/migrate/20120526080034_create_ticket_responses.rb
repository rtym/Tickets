class CreateTicketResponses < ActiveRecord::Migration
  def change
    create_table :ticket_responses do |t|
      t.integer :ticket_id
      t.text :content
      t.integer :user_id

      t.timestamps
    end

    add_index :ticket_responses, :ticket_id
    add_index :ticket_responses, :user_id
  end
end
