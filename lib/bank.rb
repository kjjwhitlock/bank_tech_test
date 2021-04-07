require 'date'

class Bank
  attr_reader :deposits, :withdrawals, :balance
  def initialize(user)
    @deposits = []
    @withdrawals = []
    @balance = 0
  end

  def deposit(amount)
    @deposits << {date: date, deposit: amount, withdraw: ""}
    @balance += amount
  end

  def withdraw(amount)
    @withdrawals << {date: date, deposit: "", withdraw: amount}
    @balance -= amount
  end
  def date
  Time.now.strftime("%d/%m/%Y")
  end
end
