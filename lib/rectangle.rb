#Returns perimeter for give length and breadth
class Rectangle
  attr_accessor :length, :breadth

  def initialize length, breadth
    @length = length
    @breadth = breadth
  end

  def == other

    if (self.equal? other)
      true

    elsif (!(self.class == other.class))
      false

    else
      @length.value == other.length.value && @breadth.value == other.breadth.value
    end

  end

  def hash
    (length.hash * 19) + (breadth.hash * 19)
  end

  def eql other
    self == other
  end


  def perimeter
    final_length = @length.value
    final_breadth = @breadth.value
    perimeter_value= 2*(final_length + final_breadth)
    Length.new(perimeter_value, Unit::MM)
  end
end