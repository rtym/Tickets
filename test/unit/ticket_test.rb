require 'test_helper'

class TicketTest < Test::Unit::TestCase
  should belong_to :ticket_status

  context "Ticket" do

    setup do
      @ticket = FactoryGirl.create(:ticket)
    end

    should "be valid" do
      puts @ticket.to_json

      puts "Hello"

      assert @ticket.valid?
    end
  end

end
