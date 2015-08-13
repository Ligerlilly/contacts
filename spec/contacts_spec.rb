require('contacts')
require('rspec')

describe(Contact) do
  before do
    Contact.clear
    @new_contact = Contact.new({first_name: 'Jason', last_name: 'Lane', job_title: 'Student', company: 'Epicodus'})
  end

  describe('#initialize') do
    it('initializes attributes for contact class') do
      expect(@new_contact.first_name).to eq 'Jason'
      expect(@new_contact.last_name).to eq 'Lane'
      expect(@new_contact.job_title).to eq 'Student'
      expect(@new_contact.company).to eq 'Epicodus'
    end
  end

  describe('.all') do
    it('returns an empty array at first') do
      expect(Contact.all()).to eq []
    end
  end

  describe('#save') do
    it('saves to contact_array') do
      expect(@new_contact.save).to eq [@new_contact]
    end
  end

  describe('.clear') do
    it('clears the contact_array') do
      @new_contact.save
      expect(Contact.clear).to eq []
    end
  end


end
