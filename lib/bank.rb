require 'date'

class Bank
  attr_reader :transactions, :balance
  def initialize(user)
    @transactions = []
    @balance = 0
  end

  def deposit(amount)
    @transactions << {date: date, deposit: amount, withdraw: ""}
    @balance += amount
  end

  def withdraw(amount)
    @transactions << {date: date, deposit: "", withdraw: amount}
    @balance -= amount
  end

  def date
  Time.now.strftime("%d/%m/%Y")
  end
end
