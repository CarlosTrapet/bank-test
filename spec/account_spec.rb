
describe 'test setup' do
  subject(:account) { Account.new }

  it 'setup working correctly' do 
    expect(subject.balance).to eq 150
  end
end