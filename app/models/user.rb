class User < ActiveRecord::Base
  attr_accessible :email, :login, :name, :surname

  has_many :ticket_responses
  has_many :tickets

  validates :email, :presence => true, :email => true
  validates_presence_of :login
  validates_presence_of :name
  validates_presence_of :surname

  validates_uniqueness_of :email, :case_sensitive => false
end
