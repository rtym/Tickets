class TicketResponse < ActiveRecord::Base
  attr_accessible :content, :ticked_id, :user_id

  belongs_to :ticket
  belongs_to :user

  validates_presence_of :content
  validates_presence_of :ticket
  validates_presence_of :user
end
