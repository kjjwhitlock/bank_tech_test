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

## Screenshot

<img width="492" alt="Screenshot 2021-04-10 at 12 23 44" src="https://user-images.githubusercontent.com/76783075/114268164-a6d6d100-99f7-11eb-9207-6ca44cf600c6.png">


## User Stories

As a user with a bank account,<br>
So that I can store my money,<br>
I would like to be able to make deposits.

As a user with a bank account,<br>
So that I can access my money,<br>
I would like to be able to make withdrawals.

As a user with a bank account,<br>
So that I can view my transactions and balance,<br>
I would like to be able to print my bank statement.

## Screenshots


## Installation

Execute:

    $ bundle install

To run rubocop:

    $ bundle exec rubocop

## Design choices

- Added a 'user' class, this enables the bank account to be assigned to the 'user' in my user story.
- Used the gem 'HIRB' to enable a more simple and clear table.
