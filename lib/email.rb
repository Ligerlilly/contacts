class Email
  attr_reader :email
  @@email_array = []
  def initialize(attribute)
    @email = attribute[:email]
  end
end
