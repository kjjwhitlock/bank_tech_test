# frozen_string_literal: true

require "date"
require "hirb"

class Bank
  attr_reader :transactions, :balance

  def initialize(user)
    @transactions = []
    @balance = 0
  end

  def credit(amount)
    add_to_balance(amount)
    @transactions << { date: date, deposit: ("%.2f" % amount).to_s, withdraw: "",
                       balance: format("%.2f", @balance).to_s }
  end

  def debit(amount)
    subtract_from_balance(amount)
    @transactions << { date: date, deposit: "", withdraw: ("%.2f" % amount).to_s,
                       balance: format("%.2f", @balance).to_s }
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end

  def print_statement
    puts Hirb::Helpers::AutoTable.render(@transactions, fields: %i[date withdraw deposit balance])
  end

  def subtract_from_balance(amount)
    @balance -= amount
  end

  def add_to_balance(amount)
    @balance += amount
  end
end
