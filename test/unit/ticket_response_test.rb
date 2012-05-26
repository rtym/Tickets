require 'test_helper'

class TicketResponseTest < Test::Unit::TestCase
  context 'relations' do
    should belong_to :ticket
    should belong_to :user
  end

  context 'validations' do
    should validate_presence_of :ticket
    should validate_presence_of :content
    should validate_presence_of :user
  end
end
