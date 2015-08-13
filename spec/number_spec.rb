require('number')
require('rspec')

describe(Number) do
  before do
    @new_number = Number.new({area_code: "503", first_half: "555", second_half: "5555", type: "cell"})
  end

  describe('#initialize') do
    it('initializes number class attributes and returns them') do
      expect(@new_number.area_code).to eq "503"
      expect(@new_number.first_half).to eq "555"
      expect(@new_number.second_half).to eq "5555"
      expect(@new_number.type).to eq "cell"
    end
  end

  describe(".all") do
    it('returns an empty array at first') do
      expect(Number.all).to eq []
    end
  end

  describe('#save') do
    it('saves number to numbers array') do
      expect(@new_number.save).to eq [@new_number]
    end
  end

  describe('.clear') do
    it('clears array') do
      expect(Number.clear).to eq []
    end
  end
end
