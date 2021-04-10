# frozen_string_literal: true

require "bank"
require "statement"

describe Bank do
  let(:bank) { Bank.new }

  describe "bank exists" do
    it "creates a new bank account" do
      expect(bank).to be_an_instance_of(Bank)
    end
  end

  describe "#credit" do
    it "increases bank balance" do
      expect { bank.credit(500) }.to change { bank.balance }.by(500)
    end
  end

  describe "#debit" do
    it "reduces bank balance" do
      expect { bank.debit(200) }.to change { bank.balance }.by(-200)
    end
  end

  describe "saves date" do
    it "returns the current date" do
      expect(bank.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end

    it "stores credit date in transaction history" do
      bank.credit(200)
      expect(bank.print_first_entry).to have_key(:date)
    end

    it "stores debit date in transaction history" do
      bank.debit(200)
      expect(bank.print_first_entry).to have_key(:date)
    end
  end

    describe "acceptance criteria feature test" do
      it "is a passing test" do
        expect do
        bank.credit(1000)
        bank.credit(2000)
        bank.debit(500)
        expect (bank.print_statement).to include("1000", "2000", "500")
      end
    end
end
end
