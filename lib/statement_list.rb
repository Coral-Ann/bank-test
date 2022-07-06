# frozen_string_literal: true

# Purpose: Holds account transaction history.
class Statement_list
  attr_reader :statement_list

  def initialize
    @statement_list = []
  end

  def add_transaction(transaction)
    @statement_list.push(transaction)
  end

  def decimal(number)
    number.zero? ? '' : format('%.2f', number)
  end

  def pretty_statement
    puts 'date || credit || debit || balance'
    @statement_list.reverse_each do |item|
      puts "#{item[:date]} || #{decimal(item[:credit])} || #{decimal(item[:debit])} || #{decimal(item[:new_balance])} "
    end
  end
end
