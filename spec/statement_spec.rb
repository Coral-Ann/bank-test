# frozen_string_literal: true

require_relative '../lib/statement'

describe Statement do
  let(:statement) { Statement.new }
  let(:transaction1) { double(:transaction, credit: 1000, debit: 0, new_balance: 1000) }
  let(:transaction2) { double(:transaction, credit: 0, debit: 500, new_balance: 500) }

  it 'should be an empty array on creation' do
    expect(statement.statement_list).to eq []
  end

  it 'stores a transaction' do
    statement.add_transaction(transaction1)
    expect(statement.statement_list).to include(transaction1)
  end

  it 'stores multiple transactions' do
    statement.add_transaction(transaction1)
    statement.add_transaction(transaction2)
    expect(statement.statement_list.length).to eq 2
  end

  it 'should print the statement heading correctly' do
    expect do
      statement.pretty_statement
    end.to output(a_string_including('    date   || credit || debit || balance')).to_stdout
  end
end
