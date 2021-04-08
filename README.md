# BankTechTest

## Project Description

Makers 'Bank' tech test written in Ruby.

## Acceptance Criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User Stories

As a user with a bank account,
So that I can store my money,
I would like to be able to make deposits.

As a user with a bank account,
So that I can access my money,
I would like to be able to make withdrawals.

As a user with a bank account,
So that I can view my transactions and balance,
I would like to be able to print my bank statement. 


## Installation

Execute:

    $ bundle install

To run rubocop: 

    $ bundle exec rubocop

## Design choices

- Added a 'user' class, this enables the bank account to be assigned to the 'user' in my user story. 
- Used the gem 'HIRB' to enable a more simple and clear table.

