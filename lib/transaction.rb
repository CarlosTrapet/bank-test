
class Transaction
  
  attr_reader :amount, :type, :date

  def initialize(amount, type, date = Time.now)
    @amount = amount
    @type = type
    @date = date
  end
end