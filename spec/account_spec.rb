
describe Account do
  subject(:account) { Account.new }

  describe '#balance' do
    it 'defaults to 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#transaction_history' do
    it 'initializes as an empty array' do
      expect(subject.transaction_history).to eq []
    end 
  end

  describe '#make_transaction' do 
    it 'raises an error when amount is not an integer' do
      message = "Please enter a valid amount"
      expect { account.make_transaction("not valid", "deposit") }.to raise_error message
    end 

    it 'raises an error when type is not DEPOSIT or WITHDRAW' do
      message = "Please select type of transaction, DEPOSIT or WITHDRAW"
      expect { account.make_transaction(100, "random string") }.to raise_error message
    end

    it 'changes account balance with input arguments' do
      expect { account.make_transaction(10, "withdraw") }.to change{account.balance}.by(-10)
    end

    it 'adds transaction to .transaction_history' do
      account.make_transaction(10, "withdraw")
      expect(account.transaction_history).not_to be_empty
    end
  end
end