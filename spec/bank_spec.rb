# frozen_string_literal: true

require 'bank'

RSpec.describe Bank do
  subject(:bank) { described_class.new }

  context('When depositing the money') do
    it('Increases the balance') do
      expect(bank.deposit(1000)).to eq(1000)
    end
  end
end
