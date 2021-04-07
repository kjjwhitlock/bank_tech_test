# frozen_string_literal: true
require 'bank.rb'
require 'user.rb'

describe Bank do
  let(:user) {User.new}
  let(:bank) { Bank.new(user) }

  describe 'bank exists' do
  it "creates a new bank account" do
    expect(bank).to be_an_instance_of(Bank)
    end
  end
  describe '#deposit' do
  it "increases bank balance" do
    expect { bank.deposit(500) }.to change { bank.balance }.by(500)
    end
  end
  describe '#withdraw' do
  it "reduces bank balance" do
    expect { bank.withdraw(200)}.to change { bank.balance }.by(-200)
  end
  end
end
