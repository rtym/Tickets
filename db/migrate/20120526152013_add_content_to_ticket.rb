class AddContentToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :content, :text, :null => false
  end
end
