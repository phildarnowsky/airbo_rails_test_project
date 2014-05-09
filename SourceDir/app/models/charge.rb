class Charge < ActiveRecord::Base
  attr_accessible :amount, :created, :currency, :customer_id, :paid, :refunded

  belongs_to :customer

  after_create :generated_created_val

  def generated_created_val
    self.update_attribute(:created, 2014 + id)
  end
end
