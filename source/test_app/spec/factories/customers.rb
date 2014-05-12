FactoryGirl.define do
  factory :customer do
    sequence(:first_name) { |n| "John  #{n}" }
    sequence(:last_name)  { |n| "Smith #{n}" }
  end
end
