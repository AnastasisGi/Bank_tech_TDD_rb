# frozen_string_literal: true

require 'date_form'
class Bank
  include DateFormat
  attr_reader :balance, :transactions

  DEFAULT_BALANCE = 0
  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([date, amount, ' ', @balance])
  end

  def withdraw(amount)
    @balance -= amount
    @transactions.push([date,' ',amount,@balance])
  end
end
