# BankTechTest

## Project Description

Week 10 of Makers Academy, we have been challenged to submit a dummy tech test which requires the build of a basic bank account function purely in Ruby.

## Installation

Clone the repo:

    $ git@github.com:kjjwhitlock/bank_tech_test.git
    
Install the gems:

    $ bundle install

To run rubocop:

    $ bundle exec rubocop

## Tech test acceptance Criteria

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

## Screenshots of this programme

IRB output

<img width="492" alt="Screenshot 2021-04-10 at 12 23 44" src="https://user-images.githubusercontent.com/76783075/114268164-a6d6d100-99f7-11eb-9207-6ca44cf600c6.png">

RSPEC tests

![image](https://user-images.githubusercontent.com/76783075/114299114-91be7880-9ab1-11eb-8b2b-8113ccffa246.png)

## User Stories

I wrote user stories based on the specification:

```
As a user with a bank account,<br>
So that I can store my money,<br>
I would like to be able to make deposits.

As a user with a bank account,<br>
So that I can access my money,<br>
I would like to be able to make withdrawals.

As a user with a bank account,<br>
So that I can view my transactions and balance,<br>
I would like to be able to print my bank statement.
```
## Design choices

I initially used the gem 'HIRB' which automatically renders a neat table. However, feedback from a coach was that this was beyond the clients needs and to use manual formatting.
