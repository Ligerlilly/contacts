class Address
  attr_reader(:zip, :street, :state, :city)

  def initialize(attributes)
    @zip = attributes[:zip]
    @state = attributes[:state]
    @city = attributes[:city]
    @street = attributes[:street]
  end
end
