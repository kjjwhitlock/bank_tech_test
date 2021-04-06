# frozen_string_literal: true
require 'bank.rb'

describe Bank do
  it "it respond to #create" do
    expect(Bank.new).to respond_to(:create)
  end
end
