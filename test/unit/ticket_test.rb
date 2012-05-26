require 'test_helper'

class TicketTest < Test::Unit::TestCase
  context 'relations' do
    should belong_to :ticket_status
    should belong_to :user
  end

  context 'validations' do
    should validate_presence_of :number
    should validate_presence_of :email
    should validate_presence_of :ticket_status
    should validate_presence_of :content
  end

  context 'check_email' do
    should allow_value("test@test.com").for(:email)

    should_not allow_value(:blah).for(:email)
    should_not allow_value("test@com").for(:email)
  end
end
