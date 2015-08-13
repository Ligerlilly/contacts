require('email')
require('rspec')

describe(Email) do
  describe('#initialize') do
    it('initializes email class and its attributes') do
      @new_email = Email.new({email: "andrew@gmail.com"})
      expect(@new_email.email).to eq "andrew@gmail.com"
    end
  end
end
