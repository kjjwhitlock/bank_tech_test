require 'date'
require 'hirb'

class Bank
  attr_reader :transactions, :balance
  def initialize(user)
    @transactions = []
    @balance = 0
  end

  def credit(amount)
    add_to_balance(amount)
    @transactions << {date: date, deposit: amount, withdraw: "", balance: "#{'%.2f' % @balance}" }
  end

  def debit(amount)
    subtract_from_balance(amount)
    @transactions << {date: date, deposit: "", withdraw: amount, balance: "#{'%.2f' % @balance}"}
  end

  def date
  Time.now.strftime("%d/%m/%Y")
  end

  def print_statement
  puts Hirb::Helpers::AutoTable.render(@transactions, fields:[:date,:withdraw,:deposit,:balance])
  end

  def subtract_from_balance(amount)
    @balance -= amount
  end

  def add_to_balance(amount)
    @balance += amount
  end
end
