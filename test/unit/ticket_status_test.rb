require 'test_helper'

class TicketStatusTest < Test::Unit::TestCase
  context 'relations' do
    should have_many :tickets
  end

  context 'validations' do
    should validate_presence_of :name
    should validate_presence_of :code
  end
end
