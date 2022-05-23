# frozen_string_literal: true

require 'date'

# Purpose: Holds current transaction details.
class Transaction
  attr_reader :credit, :debit, :new_balance, :date

  def initialize(credit, debit, new_balance)
    @credit = credit
    @debit = debit
    @new_balance = new_balance
    @date = Date.today
  end
end
