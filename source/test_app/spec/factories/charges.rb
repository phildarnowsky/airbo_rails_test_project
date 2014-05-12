FactoryGirl.define do
  factory :charge do
    paid     { [true, false].shuffle.first }
    amount   { rand(10000) + 1 }
    currency "$"
    refunded { [true, false].shuffle.first }

    customer

    trait :successful do
      paid true
      refunded false
    end

    trait :failed do
      paid false
    end

    trait :disputed do
      refunded true
      paid true
    end
  end
end
