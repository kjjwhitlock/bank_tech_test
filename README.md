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
- Used the gem 'HIRB' to enable a more simple and clear table

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bank_tech_test. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/bank_tech_test/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
