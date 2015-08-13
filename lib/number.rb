class Number
  attr_reader :type, :area_code, :first_half, :second_half, :id

  @@number_array = []

  def initialize(attributes)
    @type = attributes[:type]
    @area_code = attributes[:area_code]
    @first_half = attributes[:first_half]
    @second_half = attributes[:second_half]
    @id = attributes[:id]
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

  def self.find(id)
    found_number = nil
    @@number_array.each do |number|
      if number.id == id
        found_number = number
      end
    end
    found_number
  end

end
