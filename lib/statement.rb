# frozen_string_literal: true

# Purpose: Holds account transaction history.
class Statement
  attr_reader :statement_list

  def initialize
    @statement_list = []
  end

  def add_transaction(transaction)
    @statement_list.push(transaction)
  end

  def pretty_statement
    statement_header
    statement_body
  end

  private

  def statement_header
    puts '    date   || credit || debit || balance'
  end

  def statement_body
    @statement_list.each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:new_balance]} "
    end
  end
end
