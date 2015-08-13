class Email
  attr_accessor :email, :type, :id

  @@email_array = []

  def initialize(attributes)
    @email = attributes[:email]
    @type = attributes[:type]
    @id = @@email_array.length + 1
  end

  def self.all
    @@email_array
  end

  def save
    @@email_array.push(self)
  end

  def self.clear
    @@email_array = []
  end

  def self.find(id)
    found_email = nil
    @@email_array.each do |email|
      if email.id == id
        found_email = email
      end
    end
    found_email
  end
end
