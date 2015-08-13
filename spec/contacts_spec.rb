require('contacts')
require('rspec')

describe(Contact) do
  before do
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
end
