class Contact
  attr_reader(:first_name, :last_name, :job_title, :company)
  @@contact_array = []
  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @job_title = attributes[:job_title]
    @company = attributes[:company]
  end

  def self.all
    @@contact_array
  end

end
