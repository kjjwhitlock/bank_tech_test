# frozen_string_literal: true
require 'bank.rb'

describe Bank do
  it "is a class" do
    expect(Bank.new).to be_an_instance_of(Bank)
  end
end

describe '#create' do
  it "creates an instance of the 'Bank' class" do
    @bank = Bank.create
    expect(@bank).to be_an_instance_of(Bank)
  end
end
