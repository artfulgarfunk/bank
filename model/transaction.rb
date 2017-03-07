class Transaction

  attr_accessor :date, :credit, :debit, :balance

  def initialize(credit = nil, debit = nil, balance = 0)
    @date = Time.new
    @credit = credit
    @debit = debit
    @balance = balance
  end

end
