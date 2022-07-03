# frozen_string_literal: true

require_relative '../lib/account'
require_relative '../lib/transaction'

describe Account do
  let(:account) { Account.new }
  let(:transaction) { double(:transaction, credit: 1000, debit: 0, new_balance: 1000) }

  it 'has a starting balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'should format the current account statement' do
    account.deposit(1000)
    expect { account.view_statement }.to output(
      "date || credit || debit || balance\n#{Date.today.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00 \n"
    ).to_stdout
  end

  describe '#deposit' do
    it 'can deposit the correct amount to the balance' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
    it 'should return the deposit as a transaction hash' do
      account.deposit(1000) { is_expected.to have_key(:credit) }
    end
  end

  describe '#withdraw' do
    before { account.deposit(1000) }
    it 'can withdraw the correct amount from the balance' do
      account.withdraw(200)
      expect(account.balance).to eq 800
    end
    it 'should return the withdrawal as a transaction hash' do
      account.withdraw(100) { is_expected.to have_key(:debit) }
    end
    it 'should raise an error if account is empty' do
      expect { account.withdraw(1500) }.to raise_error('Not enough credit')
    end
  end
end
