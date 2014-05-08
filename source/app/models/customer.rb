class Customer < ActiveRecord::Base
  has_one :credit_card
end
