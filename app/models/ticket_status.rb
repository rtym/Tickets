class TicketStatus < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :tickets

  validates_presence_of :code, :name
  validates_uniqueness_of :code
end
