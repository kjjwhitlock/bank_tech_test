# frozen_string_literal: true

require "bank"
require "user"

describe Bank do
  let(:user) { User.new }
  let(:bank) { Bank.new(user) }

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
      expect(bank.transactions[0]).to have_key(:date)
    end

    it "stores debit date in transaction history" do
      bank.debit(200)
      expect(bank.transactions[0]).to have_key(:date)
    end
  end
end
