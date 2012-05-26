require 'test_helper'

class TicketTest < Test::Unit::TestCase
  should belong_to :ticket_status
  should belong_to :user

  should allow_value("test@test.com").for(:email)

  should_not allow_value(:blah).for(:email)
  should_not allow_value("test@com").for(:email)

  should_not allow_value(nil).for(:number)
  should_not allow_value(nil).for(:email)
  should_not allow_value(nil).for(:ticket_status)
end
