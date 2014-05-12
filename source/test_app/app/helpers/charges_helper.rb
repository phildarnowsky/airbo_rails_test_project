module ChargesHelper
  def format_charge(charge)
    amount        = format_currency(charge.amount)
    date          = date_format(charge.created_at)
    customer_name = charge.customer.to_s

    "#{amount} on #{date} for #{customer_name}"
  end

  private

  def format_currency(amount)
    amount_with_cents = amount.to_d / 100

    number_to_currency(amount_with_cents)
  end

  def date_format(date)
    date.strftime("%B %e, %Y")
  end
end
