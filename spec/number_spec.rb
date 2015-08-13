require('number')
require('rspec')

describe(Number) do
  describe('#initialize') do
    it('initializes number class attributes and returns them') do
      @new_number = Number.new({area_code: "503", first_half: "555", second_half: "5555", type: "cell"})
      expect(@new_number.area_code).to eq "503"
      expect(@new_number.first_half).to eq "555"
      expect(@new_number.second_half).to eq "5555"
      expect(@new_number.type).to eq "cell"
    end
  end
end
