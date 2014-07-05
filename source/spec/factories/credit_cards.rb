# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
    paid false
    amount 10
    currency "usd"
    refunded false
    customer
  end
  
  factory :charge, class: CreditCard do
    paid true
    amount 10
    currency "usd"
    refunded false
    customer
  end

  factory :fail, class: CreditCard do
    paid false
    amount 10
    currency "usd"
    refunded false
    customer
  end
  
  factory :dispute, class: CreditCard do
    paid true
    amount 10
    currency "usd"
    refunded true
    customer
  end

end
