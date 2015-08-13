class Number
  attr_reader :type, :area_code, :first_half, :second_half

  def initialize(attributes)
    @type = attributes[:type]
    @area_code = attributes[:area_code]
    @first_half = attributes[:first_half]
    @second_half = attributes[:second_half]

  end
end
