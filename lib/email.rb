class Email
  attr_reader :email, :type

  @@email_array = []

  def initialize(attributes)
    @email = attributes[:email]
    @type = attributes[:type]
  end

  def self.all
    @@email_array
  end

  def save
    @@email_array.push(self)
  end
end