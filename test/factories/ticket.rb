FactoryGirl.define do
  factory :ticket do
    email "foo@foo.com"
    number "AR-123"
    reporter "Mr. Anderson"
    ticket_status
  end
end