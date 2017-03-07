require_relative '../model/bank.rb'
require_relative '../model/transaction.rb'

describe 'features' do

  before do
    @bank = Bank.new
  end

  it "transaction history can be printed" do
    @bank.deposit(1000)
    @bank.deposit(2000)
    @bank.withdraw(500)
    expect(@bank.printer.to_s).to include("date", "credit", "debit", "balance")
    expect(@bank.transactions.length).to eq 3
  end

end
