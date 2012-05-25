require 'test_helper'

class TicketTest < Test::Unit::TestCase
  should belong_to :ticket_status

  context "validations" do

    setup do
      @ticket = FactoryGirl.create(:ticket)
    end

    should "be valid" do
      assert @ticket.valid?
    end
  end
end
