class TicketStatus < ActiveRecord::Base
  attr_accessible :code, :name

  has_many :tickets

  validates_presence_of :code, :name
  validates_uniqueness_of :code

  def self.default
    self.get_status(:waiting_for_staff_response)
  end

  def self.get_status status = nil
    where(:code => status).limit(1).first
  end
end
