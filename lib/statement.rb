# frozen_string_literal: true

require "./lib/bank"

class PrintStatement
  def self.print(bank)
    puts 'Date        ||  Deposit ||  Withdrawals || Balance'
    bank.each do |x|
    puts "#{x[:date]}  || #{x[:deposit]}   ||  #{x[:withdraw]}      || #{x[:balance]}\n"
  end
  end
  end

    #puts Hirb::Helpers::AutoTable.render(bank, fields: %i[date withdraw deposit balance])
