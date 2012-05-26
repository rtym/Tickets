require 'test_helper'

class TicketStatusTest < Test::Unit::TestCase
  should have_many :tickets

  should_not allow_value(nil).for(:name)
  should_not allow_value(nil).for(:code)
end
