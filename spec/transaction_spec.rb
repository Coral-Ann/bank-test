# frozen_string_literal: true

require_relative '../lib/transaction'
require_relative '../lib/account'

describe Transaction do
  let(:account) { Account.new }
  let(:transaction) { Transaction.new(300, 0, account.balance) }

  it 'stores a deposited amount' do
    expect(transaction.credit).to eq 300
  end

  it 'stores a withdrawn amount' do
    expect(transaction.debit).to eq 0
  end

  it 'stores the current balance' do
    account.deposit(500)
    expect(transaction.new_balance).to eq 500
  end

  it 'stores the current date' do
    expect(transaction.date).to eq Date.today
  end
end
