require('email')
require('rspec')

describe(Email) do
  before do
    @new_email = Email.new({email: "andrew@gmail.com", type: 'home', id: 1})
    Email.clear
  end

  describe('#initialize') do
    it('initializes email class and its attributes') do
      expect(@new_email.email).to eq "andrew@gmail.com"
      expect(@new_email.type).to eq "home"
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Email.all).to eq []
    end
  end

  describe("#save") do
    it('returns an array with self inside') do
      expect(@new_email.save).to eq [@new_email]
    end
  end

  describe('.clear') do
    it('clears email_array and returns it') do
      expect(Email.clear).to eq []
    end
  end

  describe('#find') do
    it('finds contact by ID') do
      @new_email.save
      expect(Email.find(1)).to eq @new_email
    end
  end

end
