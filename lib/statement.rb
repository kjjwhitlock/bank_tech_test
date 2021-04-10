# frozen_string_literal: true

require "./lib/bank"

class PrintStatement
  def self.print(bank)
    puts Hirb::Helpers::AutoTable.render(bank, fields: %i[date withdraw deposit balance])
  end
end
