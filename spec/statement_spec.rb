
require "bank"
require "statement"

describe PrintStatement do
  let(:bank) { Bank.new }

  describe '#print' do
    it 'should format transactions to the correct output' do
      bank.credit(500)
    expect { bank.print_statement }.to output("Date        ||  Deposit ||  Withdrawals || Balance\n11/04/2021  || 500.00   ||              || 500.00\n").to_stdout
  end
    it 'should print transactions in reverse order' do
      bank.credit(500)
      bank.debit(500)
    expect { bank.print_statement }.to output("Date        ||  Deposit ||  Withdrawals || Balance\n11/04/2021  ||          ||  500.00      || 0.00\n11/04/2021  || 500.00   ||              || 500.00\n").to_stdout
    end
end

describe "acceptance criteria feature test" do
  it "passes the test" do
    expect do
    bank.credit(1000)
    bank.credit(2000)
    bank.debit(500)
    expect (bank.print_statement).to include("1000", "2000", "500", :date)
  end
end
end
end
