
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
end