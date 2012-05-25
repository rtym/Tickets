require 'test_helper'

class TicketStatusTest < Test::Unit::TestCase
  should have_many :tickets

  context "validations" do

    setup do
      @ticket_status = FactoryGirl.create(:ticket_status)
    end

    should "be valid" do
      assert @ticket_status.valid?
    end
  end
end
