class Ticket < ActiveRecord::Base
  attr_accessible :email, :number, :reporter, :ticket_status_id, :user_id

  belongs_to :ticket_status
  validates_uniqueness_of :number
  validates_presence_of :email, :number, :reporter, :ticket_status
end
