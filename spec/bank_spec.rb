# frozen_string_literal: true

require 'bank'


RSpec.describe Bank do
  subject(:bank) { described_class.new }
  let(:an_amount){1000}
  let(:an_amount1){500}
  let(:type){' '}
  let(:a_date){ '26/04/2021' }


  context('When depositing the money') do
    it('Increases the balance') do
      bank.deposit(an_amount)
      expect(subject.balance).to eq(an_amount)
    end
  end

  context('When withdraing money ') do 
    it('Lowers the amount ') do 
        bank.deposit(an_amount)
        bank.withdraw(an_amount1)
        expect(bank.balance).to eq(500)
    end
  end

  context('Transaction details') do
    it('records date, amount, debit and balance on deposit') do
      allow(bank).to receive(:date).and_return(a_date)
      bank.deposit(an_amount)
      expect(bank.transactions).to eq([[a_date, an_amount, type, bank.balance]])
    end
  end
end