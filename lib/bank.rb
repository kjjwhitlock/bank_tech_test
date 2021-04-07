require 'date'

class Bank
  attr_reader :transactions, :balance
  def initialize(user)
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @transactions << {date: date, deposit: amount, withdraw: "", balance: @balance}
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << {date: date, deposit: "", withdraw: amount, balance: @balance}
  end

  def date
  Time.now.strftime("%d/%m/%Y")
  end

  def print_statement
  p @transactions
  end
end
