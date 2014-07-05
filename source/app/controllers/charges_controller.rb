class ChargesController < ApplicationController
  def index   
     @charges = CreditCard.where(paid: true, refunded: false)
     @disputes = CreditCard.where(paid: true, refunded: true)
     @fails = CreditCard.where(paid: false, refunded: false)   
  end
end
