class Contact
  attr_reader(:first_name, :last_name, :job_title, :company, :id)
  @@contact_array = []
  
  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @job_title = attributes[:job_title]
    @company = attributes[:company]
    @id = @@contact_array.length + 1
  end

  def self.all
    @@contact_array
  end

  def save
    @@contact_array.push(self)
  end

  def self.clear
    @@contact_array = []
  end

  def self.find(id)
    found_contact = nil
    @@contact_array.each do |contact|
      if contact.id == id
        found_contact = contact
      end
    end
    found_contact
  end


end
