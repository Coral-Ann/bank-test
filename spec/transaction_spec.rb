# frozen_string_literal: true

require_relative '../lib/transaction'
require_relative '../lib/account'

describe Transaction do
  let(:account) { double(:account, balance: 1000, deposit: 0) }
  let(:transaction) { Transaction.new(300, 0, account.balance) }

  it 'stores the current deposited amount' do
    expect(transaction.credit).to eq 300
  end

  it 'stores the current withdrawn amount' do
    expect(transaction.debit).to eq 0
  end

  it 'stores the current balance' do
    expect(transaction.new_balance).to eq 1000
  end

  it 'stores the current date' do
    expect(transaction.date).to eq Date.today
  end
end
