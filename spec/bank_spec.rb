# frozen_string_literal: true
require 'bank.rb'

describe Bank do
  let(:bank) { Bank.new }

  describe '#create' do
  it "creates a new bank account" do
    expect(bank.create).to be_an_instance_of(Bank)
  end
end
  describe '#deposit' do
  it "deposits funds" do
    expect(bank.deposit).
  end

  end
end
