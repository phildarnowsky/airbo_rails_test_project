%{Johny Flow|Raj Jamnis|Andrew Chung|Mike Smith}.split('|').each do |firstname, lastname|
  Customer.create(first_name: firstname, last_name: lastname)
end

successful_transaction_params = {
  paid: true,
  amount: 1000,
  currency: "usd",
  refunded: false
}

failed_transaction_params = {
  paid: false,
  amount: 1000,
  currency: "usd",
  refunded: false
}

disputed_transaction_params = {
  paid: true,
  amount: 1000,
  currency: "usd",
  refunded: true
}

customer_1, customer_2, customer_3, customer_4 = Customer.all

# Create 10 successful ones
5.times{ customer_1.charges.create(successful_transaction_params) }
3.times{ customer_2.charges.create(successful_transaction_params) }
1.times{ customer_3.charges.create(successful_transaction_params) }
1.times{ customer_4.charges.create(successful_transaction_params) }

# Create 5 failed ones
3.times{ customer_3.charges.create(failed_transaction_params) }
2.times{ customer_4.charges.create(failed_transaction_params) }

# Create 5 disputed ones
3.times{ customer_1.charges.create(disputed_transaction_params) }
2.times{ customer_2.charges.create(disputed_transaction_params) }

