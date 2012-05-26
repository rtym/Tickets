require 'test_helper'

class TicketResponseTest < Test::Unit::TestCase
  should belong_to :ticket
  should belong_to :user

  should_not allow_value(nil).for(:ticket)
  should_not allow_value(nil).for(:content)
  should_not allow_value(nil).for(:user)
end
