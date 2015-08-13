require('address')
require('rspec')

describe Address do
  before do
    @new_address = Address.new({city: 'Detroit', state: 'Michigan', zip: '48219', street: '16745 Edinborough'})
  end


  describe '#initialize' do
    it 'returns mailing attributes' do
      expect(@new_address.city).to eq "Detroit"
      expect(@new_address.state).to eq "Michigan"
      expect(@new_address.zip).to eq "48219"
      expect(@new_address.street).to eq "16745 Edinborough"
    end
  end

  describe '.all' do
    it('initializes an emtpy array') do
      expect(Address.all).to eq []
    end
  end
end
