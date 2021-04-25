# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  subject(:bank) { described_class.new }

  context('When depositing the money') do
    it('Increases the balance') do
      expect(bank.deposit(1000)).to eq(1000)
    end
  end

  context('When withdraing money ') do 
    it('Lowers the amount ') do 
        bank.deposit(1000)
        bank.withdraw(1)
        expect(bank.balance).to eq(999)
    end
  end
end
