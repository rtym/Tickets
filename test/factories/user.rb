FactoryGirl.define do
  factory :user do
    name "Test"
    surname "Test"
    login "test"
    email "test@test.com"
    ticket_responses
    tickets
  end
end