FactoryGirl.define do
  factory :ticket_status do
    sequence(:name) {|n| "name#{n}" }
    sequence(:code) {|n| "code#{n}" }
  end
end