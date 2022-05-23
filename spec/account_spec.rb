# frozen_string_literal: true

require_relative '../lib/account'
require_relative '../lib/transaction'

describe Account do
  let(:account) { Account.new }
  let(:transaction) { double(:transaction, credit: 1000, debit: 0, new_balance: 1000) }

  it 'has a starting balance of 0' do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it 'can deposit an amount to the balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
    it 'can return the deposit as a transaction' do
      expect(account.deposit(1000)).to include(a_kind_of(Transaction))
    end
  end

  describe '#withdraw' do
    before { account.deposit(1000) }
    it 'can withdraw an amount from the balance' do
      account.withdraw(200)
      expect(account.balance).to eq 800
    end
    it 'can return the withdrawal as a transaction' do
      expect(account.withdraw(1000)).to include(a_kind_of(Transaction))
    end
  end
end
