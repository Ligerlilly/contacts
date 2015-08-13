class Address
  attr_reader(:zip, :street, :state, :city)
  @@address_array = []

  def initialize(attributes)
    @zip = attributes[:zip]
    @state = attributes[:state]
    @city = attributes[:city]
    @street = attributes[:street]
  end

  def self.all
    @@address_array
  end

  def save
    @@address_array.push(self)
  end
end
