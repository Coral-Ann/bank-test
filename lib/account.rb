# frozen_string_literal: true

require_relative '../lib/transaction'
require_relative '../lib/statement'

# Purpose: Manages account.
class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement.new
  end

  def deposit(amount)
    @balance += amount
    add_to_statement(amount)
  end

  def withdraw(amount)
    @balance -= amount
    add_to_statement(amount)
  end

  private

  def add_to_statement(amount)
    current_transaction = Transaction.new(0, amount, @balance)
    @statement.add_transaction(current_transaction)
  end
end
