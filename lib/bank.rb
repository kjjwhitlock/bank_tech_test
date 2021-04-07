class Bank
  attr_reader :deposits, :withdrawals, :balance
  def initialize(user)
    @deposits = []
    @withdrawals = []
    @balance = 0
  end

  def deposit(amount)
    @deposits << amount
    update_balance
  end

  def withdraw(amount)
    @withdrawals << amount
    update_balance
  end
  
  def update_balance
      @balance = (@deposits.sum - @withdrawals.sum)
  end
end
