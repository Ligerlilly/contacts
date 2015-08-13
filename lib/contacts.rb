class Contact
  attr_reader(:first_name, :last_name, :job_title, :company)

  def initialize(attributes)
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @job_title = attributes[:job_title]
    @company = attributes[:company]
  end
end
