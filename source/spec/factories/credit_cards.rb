# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    paid false
    amount 10
    currency "usd"
    refunded false
    customer
  end
end
