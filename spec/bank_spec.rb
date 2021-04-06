# frozen_string_literal: true
require 'bank.rb'

describe Bank do
  let(:bank) { Bank.new }

  describe '#create' do
  it "responds to #create" do
    expect(bank.create).to be_an_instance_of(Bank)
  end
end
end
