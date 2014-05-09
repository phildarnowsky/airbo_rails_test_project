# Rails Programming Task

### In order to be considered for a Rails position, you must complete the following steps. Read the instructions carefully.
*Note: This task should take no longer than 1-2 hours at the most to complete.*


### Prerequisites

- This will require knowledge of Rails, RSpec, and Git.

- You will need to have Rails installed to do this task.

## Task

- Fork this repository.
- Create a *source* directory.
- In the *source* directory, generate a simple Rails 4 web app that models a credit card charge. Do not use scaffolding. The structure of the table is as follows:

```
    "paid": boolean, not null, default false
    "amount": integer, not null, default 0
    "currency": string, not null, default "usd", maximum length 5 characters
    "refunded": boolean, not null, default false
```

There should also be the standard Rails ID column, the "magic timestamps," and a customer_id column as a foreign key to the Customer model.

Amount is in USD, and is an integral number of cents. Hence 2317 = $23.17.

- Create a customer model which only has a first and last name. Do not use scaffolding. 


##### Create a Visual Representation of Different Charges:

Add a :charges resource to routes.rb. On the view that shows all charges, create three lists with H1 headers. 

Use ERB, not Haml. Write the controller from scratch, do not use scaffolding. 

You can assume that the "created_at" timestamp is the time at which a charge failed, was disputed, or succeeded.

Charge amounts should be formatted like "$14.12" and dates should be formatted like "May 9, 2014".

- List 1 - 
  - Header: Failed Charges
  - In this list set the background color of the rows to #FF0000 and list the Customers name, the charge amount and the date that the charge failed for each failed charge. 

- List 2 - 
  - Header: Disputed Charges
  - In this list set the background color of the rows to ##FF5400 and list the Customers name, the charge amount and the date that the charge was disputed for each disputed charge. 

- List 3 - 
  - Header: Successful Charges
  - In this list simply display all the charges that were succesful. 

### Tests

#### Seed 4 Customers into the system using FactoryGirl:

    Customer 1: 
      First Name: Johny 
      Last Name: Flow

    Customer 2: 
      First Name: Raj
      Last Name: Jamnis

    Customer 3: 
      First Name: Andrew
      Last Name: Chung

    Customer 4: 
      First Name: Mike
      Last Name: Smith

  
#### Seed 20 transactions (charges) into the system using FactoryGirl:

    10 Should be successful transactions:
      - 5 Should be linked to Customer 1
      - 3 Should be linked to Customer 2
      - 1 Should be linked to Customer 3
      - 1 Should be linked to Customer 4
    
    5 Should be transactions that failed:
      - 3 Should be linked to Customer 3
      - 2 Should be linked to Customer 4
    
    5 should be disputed:
      - 3 should be linked to Customer 1
      - 2 should be linked to customer 2

#### Test functionality

Create the following RSpec tests:

  1.  Verify that there are three lists on the screen. One for successful charges, one for failed charges and one for the disputed charges. 
  2.  Verify that in the Successful charges list there are 10 line items. Verify that in the failed charges list there are 5 failed charges. Verify that in the disputed charges list there are disputed charges. 

## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you






