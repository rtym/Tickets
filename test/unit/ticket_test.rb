require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  should "be valid" do
    assert Ticket.new.valid?
  end
end
