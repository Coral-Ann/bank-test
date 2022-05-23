require_relative '../lib/account.rb'

describe Account do
  let (:account) { Account.new }

  it 'has a starting balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'can deposit an amount to the balance' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'can withdraw an amount from the balance' do
    account.deposit(1000)
    account.withdraw(200)
    expect(account.balance).to eq 800
  end
end