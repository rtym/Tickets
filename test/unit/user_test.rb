require 'test_helper'

class UserTest < Test::Unit::TestCase
  context 'relations' do
    should have_many :tickets
    should have_many :ticket_responses
  end

  context 'validations' do
    should validate_presence_of :name
    should validate_presence_of :surname
    should validate_presence_of :email
  end

  context 'check_email' do
    should allow_value("test@test.com").for(:email)

    should_not allow_value(:blah).for(:email)
    should_not allow_value("test@com").for(:email)
  end
end
