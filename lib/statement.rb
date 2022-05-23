# frozen_string_literal: true

require 'date'

# Purpose: Holds account transaction history.
class Statement
  attr_reader :statement_list

  def initialize
    @statement_list = []
  end

  def add_transaction(transaction)
    @statement_list.push(transaction)
  end
end
