FactoryGirl.define do
  factory :ticket do
    email "foo@foo.com"
    reporter "Mr. Anderson"
    ticket_status
  end
end