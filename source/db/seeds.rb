# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

johny = Customer.create(first_name: 'Johny', last_name: 'Flow')
raj = Customer.create(first_name: 'Raj', last_name: 'Jamnis')
andrew = Customer.create(first_name: 'Andrew', last_name: 'Chung')
mike = Customer.create(first_name: 'Mike', last_name: 'Smith')

#10 Should be successful transactions:
#  - 5 Should be linked to Customer 1
#  - 3 Should be linked to Customer 2
#  - 1 Should be linked to Customer 3
#  - 1 Should be linked to Customer 4
  
CreditCard.create([
  {paid: true, amount: 4900, currency: "usd", refunded: false, customer: johny},
  {paid: true, amount: 4700, currency: "usd", refunded: false, customer: johny},
  {paid: true, amount: 4600, currency: "usd", refunded: false, customer: johny},
  {paid: true, amount: 4500, currency: "usd", refunded: false, customer: johny},
  {paid: true, amount: 4400, currency: "usd", refunded: false, customer: johny},
  {paid: true, amount: 3900, currency: "usd", refunded: false, customer: raj},
  {paid: true, amount: 3800, currency: "usd", refunded: false, customer: raj},
  {paid: true, amount: 3700, currency: "usd", refunded: false, customer: raj},
  {paid: true, amount: 4900, currency: "usd", refunded: false, customer: andrew},
  {paid: true, amount: 4900, currency: "usd", refunded: false, customer: mike}
])

#5 Should be transactions that failed:
#  - 3 Should be linked to Customer 3
#  - 2 Should be linked to Customer 4

CreditCard.create([
  {paid: false, amount: 4900, currency: "usd", refunded: false, customer: andrew},
  {paid: false, amount: 4800, currency: "usd", refunded: false, customer: andrew},
  {paid: false, amount: 4700, currency: "usd", refunded: false, customer: andrew},
  {paid: false, amount: 4900, currency: "usd", refunded: false, customer: mike},
  {paid: false, amount: 4800, currency: "usd", refunded: false, customer: mike}
])

#5 should be disputed:
#  - 3 should be linked to Customer 1
#  - 2 should be linked to customer 2
CreditCard.create([
  {paid: true, amount: 4900, currency: "usd", refunded: true, customer: johny},
  {paid: true, amount: 4900, currency: "usd", refunded: true, customer: johny},
  {paid: true, amount: 4900, currency: "usd", refunded: true, customer: johny},
  {paid: true, amount: 4900, currency: "usd", refunded: true, customer: raj},
  {paid: true, amount: 4900, currency: "usd", refunded: true, customer: raj}  
])
