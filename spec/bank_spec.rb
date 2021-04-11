# frozen_string_literal: true

require "bank"
require "statement"

describe Bank do
  let(:bank) { Bank.new }

  describe "bank exists" do
    it "should create a new bank account" do
      expect(bank).to be_an_instance_of(Bank)
    end
  end

  describe "#credit" do
    it "should increase bank balance" do
      expect { bank.credit(500) }.to change { bank.balance }.by(500)
    end
  end

  describe "#debit" do
    it "should reduce bank balance" do
      expect { bank.debit(200) }.to change { bank.balance }.by(-200)
    end
  end

  describe "saves the date" do
    it "should return the current date" do
      expect(bank.date).to eq(Time.now.strftime("%d/%m/%Y"))
    end

    it "should store credit date in transaction history" do
      bank.credit(200)
      expect(bank.print_first_entry).to have_key(:date)
    end

    it "should store debit date in transaction history" do
      bank.debit(200)
      expect(bank.print_first_entry).to have_key(:date)
    end
  end
end
