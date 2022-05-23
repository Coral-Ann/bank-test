# frozen_string_literal: true

require 'date'

# Purpose: Holds current transaction details.
class Transaction
  attr_reader :credit, :debit, :new_balance, :date

  def initialize(credit, debit, new_balance)
    @credit = credit.to_f
    @debit = debit.to_f
    @new_balance = new_balance.to_f
    @date = Date.today.strftime('%d/%m/%Y')
  end

  def stored_data
    { credit: @credit,
      debit: @debit,
      new_balance: @new_balance,
      date: @date }
  end
end
