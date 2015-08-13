class Address
  attr_reader(:zip, :street, :state, :city, :type)
  @@address_array = []

  def initialize(attributes)
    @zip = attributes[:zip]
    @state = attributes[:state]
    @city = attributes[:city]
    @street = attributes[:street]
    @type = attributes[:type]
  end

  def self.all
    @@address_array
  end

  def save
    @@address_array.push(self)
  end

  def self.clear
    @@address_array = []
  end
end
