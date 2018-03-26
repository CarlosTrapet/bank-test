
class Account

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []    
  end
  
end
