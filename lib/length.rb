#defines length as a combination of value and unit
class Length
  attr_reader :value, :unit

  def initialize value, unit
    @value = convert_to_mm value, unit
  end


  def == other

    if (self.equal? other)
      true

    elsif (!(self.class == other.class))
      false

    else

      self.value == other.value
    end

  end

  def hash
    (@value.hash * 19)
  end

  def eql other
    self == other
  end

  def convert_to_mm value, unit

    if unit == Unit::METRE
      new_value = value * 1000

    elsif unit == Unit::CM
      new_value = value * 100

    else
      new_value = value
    end

    new_value

  end


end
