class Customer < ActiveRecord::Base
  has_one :credit_card
  
  def name
    first_name+ ' '+last_name
  end
end
