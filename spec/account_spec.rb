require_relative '../lib/account.rb'

describe Account do
  let (:account) { Account.new }

  it 'has a starting balance of 0' do
    expect(account.balance).to eq 0
  end
end