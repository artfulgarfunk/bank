require_relative '../model/bank.rb'

describe "Bank" do

  it "so I can manage my money, I can create a bank account" do
    expect{ bank = Bank.new }.not_to raise_error
  end

  before do
    @bank = Bank.new
  end

  it "with a default starting balance of zero" do
    expect(@bank.balance).to eq 0
  end

  it "so that I can save my money, I can deposit money into the account" do
    @bank.deposit(500)
    expect(@bank.balance).to eq 500
  end

  it "so that I can use my money, I can withdraw money from the account" do
    @bank.deposit(500)
    @bank.withdraw(250)
    expect(@bank.balance).to eq 250
  end

end
