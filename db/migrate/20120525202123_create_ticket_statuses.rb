class CreateTicketStatuses < ActiveRecord::Migration
  def change
    create_table :ticket_statuses do |t|
      t.string :name
      t.string :code

      t.timestamps
    end

    TicketStatus.create!([
                             {:name => "Waiting for Staff Response", :code => "waiting_for_staff_response"},
                             {:name => "Waiting for Customer", :code => "waiting_for_customer"},
                             {:name => "On Hold", :code => "on_hold"},
                             {:name => "Cancelled", :code => "cancelled"},
                             {:name => "Completed", :code => "completed"}
                         ])
  end
end
