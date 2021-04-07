class Bank
  attr_reader :deposits, :withdrawals, :balance
  def initialize(user)
    @deposits = []
    @withdrawals = []
    @balance = 0
  end
end
