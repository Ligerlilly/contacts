class Address
  attr_accessor(:zip, :street, :state, :city, :type, :id)
  @@address_array = []

  def initialize(attributes)
    @zip = attributes[:zip]
    @state = attributes[:state]
    @city = attributes[:city]
    @street = attributes[:street]
    @type = attributes[:type]
    @id = @@address_array.length + 1
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

  def self.find(id)
    found_address = nil
    @@address_array.each do |address|
      if address.id == id
        found_address = address
      end
    end
    found_address
  end
end
