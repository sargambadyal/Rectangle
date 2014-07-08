#defines length as a combination of value and unit
class Length
  attr_reader :value, :unit

  def initialize value, unit
    @scaled_length = convert_to_mm value, unit
  end

  def convert_to_mm value, unit

    if unit =='m'
      new_value = value * 1000

    elsif unit =='cm'
      new_value = value * 100

    else
      new_value = value
    end

    new_value

  end


end
