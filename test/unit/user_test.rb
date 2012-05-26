require 'test_helper'

class UserTest < Test::Unit::TestCase
  should have_many :tickets
  should have_many :ticket_responses

  should allow_value("test@test.com").for(:email)

  should_not allow_value(:blah).for(:email)
  should_not allow_value("test@com").for(:email)

  should_not allow_value(nil).for(:name)
  should_not allow_value(nil).for(:surname)
  should_not allow_value(nil).for(:email)
end
