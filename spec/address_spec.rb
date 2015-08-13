require('address')
require('rspec')

describe Address do
  before do
    Address.clear
    @new_address = Address.new({city: 'Detroit', state: 'Michigan', zip: '48219', street: '16745 Edinborough', type: 'home', id: 1})
  end


  describe '#initialize' do
    it 'returns mailing attributes' do
      expect(@new_address.city).to eq "Detroit"
      expect(@new_address.state).to eq "Michigan"
      expect(@new_address.zip).to eq "48219"
      expect(@new_address.street).to eq "16745 Edinborough"
      expect(@new_address.type).to eq "home"
      expect(@new_address.id).to eq 1
    end
  end

  describe '.all' do
    it('initializes an emtpy array') do
      expect(Address.all).to eq []
    end
  end

  describe '#save' do
    it('returns array with self inside') do
      expect(@new_address.save).to eq [@new_address]
    end
  end

  describe '.clear' do
    it('clears the address array') do
      expect(Address.clear()).to eq []
    end
  end

  describe '.find' do
    it('finds the address by ID number') do
      @new_address.save
      expect(Address.find(1)).to eq @new_address
      Address.clear
    end
  end
end
