
describe Transaction do
  subject(:transaction) { Transaction.new(200, "deposit", Time.new(2018, 03, 26)) }
  
  describe '#initialize' do 
    it 'initializes with correct time-stamp' do 
      expect(transaction.date).to be_an_instance_of Time
    end 
  end 

  describe '#print_transaction' do 
    it 'returns printed transaction in a string' do
      printed_transaction = "|| 2018-03-26 00:00:00 +0100 ||       || Deposit ||       || 200 ||"
      expect(transaction.print_transaction).to eq printed_transaction
    end
  end
end
