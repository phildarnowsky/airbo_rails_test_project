class Customer < ActiveRecord::Base
  has_many :charges

  def to_s
    "#{first_name} #{last_name}"
  end
end
