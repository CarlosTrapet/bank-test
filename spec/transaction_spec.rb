
describe Transaction do
  subject(:transaction) { Transaction.new(200, "deposit") }
  
  describe '#initialize' do 
    it 'initializes with correct time-stamp' do 
      expect(transaction.date).to be_an_instance_of Time
    end 
  end 
end
