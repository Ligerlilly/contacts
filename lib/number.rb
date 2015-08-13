class Number
  attr_reader :type, :area_code, :first_half, :second_half

  @@number_array = []

  def initialize(attributes)
    @type = attributes[:type]
    @area_code = attributes[:area_code]
    @first_half = attributes[:first_half]
    @second_half = attributes[:second_half]
  end

  def self.all
    @@number_array
  end

  def save
    @@number_array.push(self)
  end

  def self.clear
    @@number_array = []
  end

end
