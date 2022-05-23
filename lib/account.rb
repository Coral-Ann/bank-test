# frozen_string_literal: true

require_relative '../lib/transaction'

# Purpose: Manages user account interaction.
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @current_transaction = Transaction.new(amount, 0, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @current_transaction = Transaction.new(0, amount, @balance)
  end
end
