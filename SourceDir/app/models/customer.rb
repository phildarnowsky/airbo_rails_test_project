class Customer < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :charges

  def full_name
    "#{first_name} #{last_name}"
  end
end
