class Bank

  attr_accessor :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << Transaction.new(amount, nil, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << Transaction.new(nil, amount, @balance)
  end

  def printer
    puts ' date     ||  credit  ||   debit  || balance'
    @transactions.each do |t|
        linewidth = 42
        date = "#{t.date.year}-#{t.date.month}-#{t.date.day}"
        puts "#{date.to_s.center(linewidth/4)}||" + "#{t.credit.to_s.center(linewidth/4)}||" + "#{t.debit.to_s.center(linewidth/4)}||" + "#{t.balance.to_s.center(linewidth/4)}"
      end
  end

end
