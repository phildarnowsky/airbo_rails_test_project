class CreditCard < ActiveRecord::Base
  belongs_to :customer
  delegate :name, to: :customer
end
