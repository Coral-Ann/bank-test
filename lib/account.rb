# frozen_string_literal: true
require_relative '../lib/transaction'
require_relative '../lib/statement_list'

# Purpose: Manages user actions on account.
class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Statement_list.new
  end

  def deposit(amount)
    @balance += amount
    record_deposit(amount)
  end

  def withdraw(amount)
    raise 'Not enough credit' if @balance < amount

    @balance -= amount
    record_withdrawal(amount)
  end

  def view_statement
    @statement.pretty_statement
  end

  private

  def record_deposit(amount)
    new_deposit = Transaction.new(amount, 0, @balance)
    @statement.add_transaction(new_deposit.stored_data)
  end

  def record_withdrawal(amount)
    new_withdrawal = Transaction.new(0, amount, @balance)
    @statement.add_transaction(new_withdrawal.stored_data)
  end
end
