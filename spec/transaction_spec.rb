require_relative '../model/transaction.rb'

describe Transaction do

  subject(:transaction) { described_class.new(20,30,50) }

  it "it contains the date" do
    allow(transaction).to receive(:date) {'10/10/10'}
    expect(transaction.date).to eq '10/10/10'
  end

  it "it contains the deposit/credit value" do
    expect(transaction.credit).to eq 20
  end

  it "it contains the withdrawal/debit value" do
    expect(transaction.debit).to eq 30
  end

  it "it contains the current balance" do
    expect(transaction.balance).to eq 50
  end

end
