require('email')
require('rspec')

describe(Email) do
  describe('#initialize') do
    it('initializes email class and its attributes') do
      @new_email = Email.new({email: "andrew@gmail.com", type: 'home'})
      expect(@new_email.email).to eq "andrew@gmail.com"
      expect(@new_email.type).to eq "home"
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Email.all).to eq []
    end
  end

end
