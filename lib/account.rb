
class Account

  attr_accessor :balance, :transaction_history

  def initialize
    @balance = 0
    @transaction_history = []    
  end
  
  def make_transaction(amount, type)
    raise "Please enter a valid amount" unless amount_valid?(amount)
    raise "Please select type of transaction, DEPOSIT or WITHDRAW" unless type_valid?(type)
    update_balance(amount, type)
    @transaction_history.push(Transaction.new(amount, type))    
  end

  def print_statement
    puts "|| Date                      ||       || Transaction ||   || Amount ||"
    @transaction_history.each do |transaction|
      puts transaction.print_transaction
    end
  end

  private
    def update_balance(amount, type)
      if type.downcase == "deposit"
        @balance += amount
      elsif type.downcase == "withdraw"
        @balance -= amount
      end
    end

    def amount_valid?(amount)
      amount.is_a?(Integer)
    end

    def type_valid?(type)
      type.downcase == "deposit" || type.downcase == "withdraw"
    end
end
