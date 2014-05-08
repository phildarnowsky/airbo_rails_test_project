# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    paid false
    amount 1
    currency "MyString"
    refunded false
    customer_id 1
  end
end
