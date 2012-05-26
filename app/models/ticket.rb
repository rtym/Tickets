class Ticket < ActiveRecord::Base
  attr_accessible :email, :number, :reporter, :ticket_status_id, :user_id

  belongs_to :ticket_status
  belongs_to :user
  has_many :ticket_responses

  validates_uniqueness_of :number
  validates_presence_of :email, :number, :reporter, :ticket_status
  validates :email, :email => true

  after_initialize lambda{
    self.ticket_status = TicketStatus.default if self.ticket_status.blank?
    self.number = self.class.get_last_number
  }

  def self.get_last_number
    order("`created_at` DESC").limit(1).first.number
  rescue
    "AA-000000"
  end
end
